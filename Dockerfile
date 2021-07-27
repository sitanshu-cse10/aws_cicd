FROM python:3.6
MAINTAINER Sitanshu Tripathi "sitstripathi10@gmail.com"
FROM jupyter/scipy-notebook

# install build utilities 
RUN pip install joblib

RUN mkdir my-model
ENV MODEL_DIR=/home/ec2-user/my-model
ENV MODEL_FILE_LDA=clf_lda.joblib
ENV MODEL_FILE_NN=clf_nn.joblib


COPY python_test.py ./python_test.py

COPY train.csv ./train.csv
COPY test.csv ./test.csv

COPY train-nn.py ./train-nn.py

# Run python scripts 
RUN python3 python_test.py
