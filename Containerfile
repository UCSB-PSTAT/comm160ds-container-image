FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN mamba install -y scikit-learn seaborn aiohttp  pysocks geopy googletrans cchardet nest-asyncio nltk spacy textblob

RUN /usr/local/bin/fix-permissions "${CONDA_DIR}" || true

USER $NB_USER

RUN pip install twint

