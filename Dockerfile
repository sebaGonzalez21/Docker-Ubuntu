#!/bin/sh

FROM ubuntu:16.04

# Install.
RUN \
 apt-get install -y && apt-get update -y && \
 apt-get install -y --no-install-recommends apt-utils && \
 apt-get install -y vim && \
 apt-get -y install openssh-client && \
 ssh-keygen -q -t rsa -N '' -f /id_rsa && \
 apt-get install -y cifs-utils && \
 apt-get install -y smbclient
