import json
import os
import argparse
import shutil
import numpy as np

import faiss

if __name__ == '__main__':
    M = 64
    efC = 40
    flat_index_dir = '/home/opc/.cache/pyserini/indexes/dindex-wikipedia-dpr_multi-bf-20200127-f403c3.29eb39fe0b00a03c36c0eeae4c24f775'
    hnsw_index_dir = '/home/opc/ralm-sys/wikipedia-dpr-hnsw'

    print('Copying docid...')
    shutil.copy(os.path.join(flat_index_dir, 'docid'), os.path.join(hnsw_index_dir, 'docid'))

    print('Copied. Reading flat index...')
    flat_index = faiss.read_index(os.path.join(flat_index_dir, 'index'))

    print('Read. Obtaining vectors...')
    vectors = flat_index.reconstruct_n(0, flat_index.ntotal)

    print('Vectors obtained. Converting to np.array...')
    vectors = np.array(vectors, dtype='float32')

    print(f'Converted. Shape is {vectors.shape}. Initializing hnsw index...')
    hnsw_index = faiss.IndexHNSWFlat(vectors.shape[1], M, faiss.METRIC_INNER_PRODUCT)
    hnsw_index.hnsw.efConstruction = efC
    hnsw_index.verbose = True

    print('Initialized. Adding vectors...')
    hnsw_index.add(vectors)

    print(f'{hnsw_index.ntotal} vectors added. Writing index...')
    faiss.write_index(hnsw_index, os.path.join(hnsw_index_dir, 'index'))
    print('All done!')
