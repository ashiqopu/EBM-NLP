# Setup container with Ubuntu 16.04 image
FROM ubuntu:16.04

# Work directory
# Set the working directory to /ebm-nlp
WORKDIR /ebm-nlp

# Copy the current directory contents into the container at /ebm-nlp
COPY . /ebm-nlp

# Required packages for data fetching and python
RUN apt-get update && apt-get install -y \
    zip unzip \
    wget git\
    python3 \
    python3-pip

# DO NOT upgrare pip as it will break python
RUN python3 -m pip install --upgrade setuptools

# Install Tensorflow for training
RUN python3 -m pip install --user tensorflow

# Installl NLTK library and Averaged Perceptron Tagger
RUN python3 -m pip install nltk
RUN python3 -m nltk.downloader averaged_perceptron_tagger

# Set executable permission to run-full.sh
RUN chmod +x run-full.sh

# Set executable permission to rahman-eval.sh
RUN chmod +x rahman-eval.sh

# This is the command that will be run when you start the container
CMD ["/bin/sh", "./rahman-eval.sh"]
