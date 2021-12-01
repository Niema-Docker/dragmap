# Minimal Docker image for DRAGMAP using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install DRAGMAP
RUN apk update && \
    apk add bash boost-dev g++ gtest-dev make && \
    wget -qO- "https://github.com/Illumina/DRAGMAP/archive/refs/tags/1.2.1.tar.gz" | tar -zx && \
    cd DRAGMAP-* && \
    make && \
    make install && \
    cd .. && \
    rm -rf DRAGMAP-*
