# Version: 0.0.1
# geographica/mongo-monary:latest
#
# This Dockerfile creates a Debian Wheezy derived base image that 
# installs Monary over MongoDB (with Mongo C Driver)
#

# Mongo DB official image (created over debian:wheezy)
FROM mongo:latest

MAINTAINER Cayetano Benavent <cayetano.benavent@geographica.gs>

# Install basic dependencies
RUN apt-get update -y && \
    apt-get install -y \
    wget \
    software-properties-common \
    build-essential \
    python-pip \
    python-software-properties \
    python-dev \
    python-numpy \
    libssl-dev \
    libsasl2-dev

# Get sources, compile and install Monary (with Mongo C Driver)
ADD ./compile_install.sh /tmp/
RUN sh /tmp/compile_install.sh
