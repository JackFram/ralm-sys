import json
import multiprocessing

from ralm.retrievers.base_retrieval import BaseRetriever
from pyserini.search.lucene import LuceneSearcher
from pyserini.index import IndexReader


class SparseRetriever(BaseRetriever):
    def __init__(self, index_name, num_tokens_for_query, forbidden_titles_path):
        super(SparseRetriever, self).__init__()
        self.searcher = self._get_searcher(index_name)
        self.num_tokens_for_query = num_tokens_for_query

        self.forbidden_titles = self._get_forbidden_titles(forbidden_titles_path)
        self.reader = IndexReader(self.searcher.index_dir)
        # doc = self.retrieve(["Lobster is tasty."])
        # score = doc[0]["retrieved_docs"][0]["score"]
        # docid = doc[0]["retrieved_docs"][0]["docid"]
        # print(f"gt score: {score}")
        # print(self.reader.compute_query_document_score(docid, "Lobster is tasty."))
        # self.reader.dump_documents_BM25("./test.json")
        # exit(0)


    def _get_searcher(self, index_name):
        try:
            print(f"Attempting to download the index as if prebuilt by pyserini")
            return LuceneSearcher.from_prebuilt_index(index_name)
        except ValueError:
            print(f"Index does not exist in pyserini.")
            print("Attempting to treat the index as a directory (not prebuilt by pyserini)")
            return LuceneSearcher(index_name)

    def _get_forbidden_titles(self, forbidden_titles_path):
        if forbidden_titles_path is None:
            return []
        with open(forbidden_titles_path, "r") as f:
            forbidden_titles = [line.strip() for line in f]
        return set(forbidden_titles)

    def _get_title_from_retrieved_document(self, doc):
        title, _ = doc.split("\n")
        if title.startswith('"') and title.endswith('"'):
            title = title[1:-1]
        return title

    def _retrieve_no_forbidden(self, query_str):
        k = 16
        prev_k = 0
        while True:
            retrieved_res = self.searcher.search(query_str, k=k)
            for idx in range(prev_k, k):
                res_dict = json.loads(retrieved_res[idx].raw)
                context_str = res_dict["contents"]
                title = self._get_title_from_retrieved_document(context_str)
                if title not in self.forbidden_titles:
                    return context_str
            prev_k = k
            k *= 2

    # def _get_query_string(self, sequence_input_ids, target_begin_location, target_end_location, title=None):
    #     # We isolate the prefix to make sure that we don't take tokens from the future:
    #     prefix_tokens = sequence_input_ids[0, :target_begin_location]
    #     query_tokens = prefix_tokens[-self.num_tokens_for_query:]
    #     query_str = self.tokenizer.decode(query_tokens)
    #     return query_str

    def retrieve(self, dataset, k=1):
        queries = [
            d for d in dataset
        ]
        assert len(queries) == len(dataset)
        all_res = self.searcher.batch_search(
            queries,
            qids=[str(i) for i in range(len(queries))],
            k=max(100, 4*k) if self.forbidden_titles else k,
            threads=multiprocessing.cpu_count()
        )

        ret_dataset = [
            {} for _ in dataset
        ]

        for qid, res in all_res.items():
            qid = int(qid)
            d = ret_dataset[qid]
            d["query"] = queries[qid]
            allowed_docs = []
            for hit in res:
                res_dict = json.loads(hit.raw)
                context_str = res_dict["contents"]
                title = self._get_title_from_retrieved_document(context_str)
                if title not in self.forbidden_titles:
                    allowed_docs.append({"text": context_str, "score": hit.score, "docid": hit.docid})
                    if len(allowed_docs) >= k:
                        break
            d["retrieved_docs"] = allowed_docs
        return ret_dataset

    def get_doc_query_score(self, docid, query):
        return self.reader.compute_query_document_score(docid, query)
