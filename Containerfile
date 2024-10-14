FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

# Pin the numpy version to version 1.x until other modules catch up.
RUN echo "numpy 1.*" >> /opt/conda/conda-meta/pinned 

RUN mamba install -y scikit-learn seaborn aiohttp  pysocks geopy googletrans cchardet nest-asyncio

RUN pip install twint nltk spacy textblob

USER $NB_USER
