FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN mamba install -y scikit-learn

#RUN pip install <libraries>

USER $NB_USER
