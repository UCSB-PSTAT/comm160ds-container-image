FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN mamba install -y scikit-learn seaborn

RUN pip install twint

USER $NB_USER
