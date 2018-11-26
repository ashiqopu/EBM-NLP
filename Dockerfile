# Setup container with Ubuntu 16.04 image
FROM ubuntu:16.04

# Work directory
# Set the working directory to /ebm-nlp
WORKDIR /ebm-nlp

# Copy the current directory contents into the container at /ebm-nlp
COPY . /ebm-nlp

# Update container image
RUN apt-get -qq update

# Required packages for testing and data fetching
RUN apt-get -qq install -y zip unzip wget git -qq
RUN apt-get -qq install -y python3 python3-pip -qq
# RUN apt-get -qq install -y openjdk-8-jre-headless -qq

# DO NOT upgrare pip as it will break python
RUN python3 -m pip -q install --upgrade setuptools

# Install Tensorflow for training
RUN python3 -m pip -q install --user tensorflow

# Installl NLTK library and Averaged Perceptron Tagger
RUN python3 -m pip -q install nltk
RUN python3 -m nltk.downloader averaged_perceptron_tagger

# Clean accessibility.properties for java
# RUN sed -i 's/assistive/#assistive/g' /etc/java-8-openjdk/accessibility.properties

# Add stanford-ner to CLASSPATH
# RUN export CLASSPATH="/ebm-nlp/stanford-ner/stanford-ner.jar"

# Set executable permission to run-full.sh
RUN chmod +x run-full.sh

# Set executable permission to rahman-eval.sh
RUN chmod +x rahman-eval.sh

# This is the command that will be run when you start the container
ENTRYPOINT ["/ebm-nlp/rahman-eval.sh"]
CMD []
#CMD ["/bin/sh", "./rahman-eval.sh"]
