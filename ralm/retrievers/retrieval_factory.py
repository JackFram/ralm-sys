def add_retriever_args(args, retriever_type):
    if retriever_type == "sparse":
        args.index_name = "wikipedia-dpr"
        args.num_tokens_for_query = 32
        args.forbidden_titles_path = "ralm/retrievers/wikitext103_forbidden_titles.txt"

    elif retriever_type == "dense":
        args.num_tokens_for_query = 32
        args.forbidden_titles_path = "ralm/retrievers/wikitext103_forbidden_titles.txt"
        '''
        cast2019-tct_colbert-v2-hnsw: castorini/tct_colbert-v2-msmarco
        wikipedia-dpr-multi-bf: facebook/dpr-question_encoder-multiset-base
        '''
        args.index_name = "wikipedia-dpr-multi-bf"
        args.sparse_index_name = "wikipedia-dpr-multi-bf"
        args.encoder_name = "facebook/dpr-question_encoder-multiset-base"
        args.ratio = 1
        
    elif retriever_type == "dense_hnsw":
        args.num_tokens_for_query = 32
        args.forbidden_titles_path = "ralm/retrievers/wikitext103_forbidden_titles.txt"
        args.index_name = "wikipedia-dpr-hnsw"
        args.sparse_index_name = "wikipedia-dpr-multi-bf"
        args.encoder_name = "facebook/dpr-question_encoder-multiset-base"
        args.ratio = 10
        
    else:
        raise ValueError


def get_retriever(retriever_type, args):
    if retriever_type == "sparse":
        from ralm.retrievers.sparse_retrieval import SparseRetriever
        return SparseRetriever(
            index_name=args.index_name,
            forbidden_titles_path=args.forbidden_titles_path,
            num_tokens_for_query=args.num_tokens_for_query,
        )
    elif retriever_type == "dense" or retriever_type == "dense_hnsw":
        from ralm.retrievers.dense_retrieval import DenseRetriever
        return DenseRetriever(
            index_name=args.index_name,
            encoder_name=args.encoder_name,
            forbidden_titles_path=args.forbidden_titles_path,
            num_tokens_for_query=args.num_tokens_for_query,
            sparse_index_name=args.sparse_index_name,
            ratio=args.ratio,
        )
    raise ValueError
