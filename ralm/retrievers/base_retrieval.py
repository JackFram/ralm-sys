class BaseRetriever:
    def __init__(self):
        pass

    def retrieve(self, dataset, k=1):
        raise NotImplementedError
