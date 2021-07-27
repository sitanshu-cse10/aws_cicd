FROM python:3.6
MAINTAINER Sitanshu Tripathi "sitstripathi10@gmail.com"
FROM jupyter/scipy-notebook

# install build utilities 
RUN pip install joblib

# check our python environment
RUN python3 –version
RUN pip3 –version

# set the working directory for containers
WORKDIR /usr/src/my-app-name

# Run python scripts 
RUN python3 python_test.py
