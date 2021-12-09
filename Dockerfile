FROM ubuntu:21.04 AS base

RUN apt-get update && \
  apt-get -y upgrade &&\
  apt-get install -y unzip

# Create src directory
WORKDIR /rdio-scanner

ADD https://github.com/chuot/rdio-scanner/releases/download/v6.0.4-beta/rdio-scanner-linux-amd64-v6.0.4.zip /rdio-scanner
RUN unzip rdio-scanner-linux-amd64-v6.0.4.zip

EXPOSE 3010
CMD rdio-scanner -listen :3010
