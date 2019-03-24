FROM ubuntu:latest

# Install.
RUN \
  apt-get update && \
  apt-get install -y iputils-ping && \
  apt-get install -y vim && \
  apt-get -y install openssh-client && \
  ssh-keygen -q -t rsa -N '' -f /id_rsa && \
  apt-get install -y cifs-utils