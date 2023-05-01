FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN mamba install -y scikit-learn seaborn aiohttp  pysocks geopy googletrans cchardet nest-asyncio

RUN pip install twint nltk spacy textblob

USER $NB_USER
