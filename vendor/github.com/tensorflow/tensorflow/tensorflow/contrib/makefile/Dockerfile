FROM ubuntu:xenial-20201014

LABEL maintainer="Gunhan Gulsoy <gunan@google.com>"

# Install make build dependencies for TensorFlow.
RUN apt-get update
RUN apt-get install -y \
    autoconf \
    automake \
    curl \
    g++ \
    git \
    libtool \
    make \
    python \
    unzip \
    wget \
    zlib1g-dev
