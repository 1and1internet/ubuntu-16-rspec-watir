FROM ubuntu:xenial
MAINTAINER nick.campion@1and1.co.uk
ARG DEBIAN_FRONTEND=noninteractive
COPY files/ /
RUN \
  apt-get -y update && \
  apt-get -y install xvfb ruby ruby-rspec ruby-ffi git firefox=45.0.2+build1-0ubuntu1 && \
  gem install watir watir-ng headless && \
  locale-gen en_GB.utf8 && \
  apt-get -y clean && \
  rm -rf /var/lib/apt/lists/*
ENV \
  LC_ALL=en_GB.UTF-8 \
  LANG=en_GB.UTF-8 \
  LANGUAGE=en_GB.UTF-8
EXPOSE 7055
CMD /bin/bash
