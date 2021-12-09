FROM ubuntu:21.04 AS base

# Create src directory
WORKDIR /src

ADD https://github.com/chuot/rdio-scanner/releases/download/v6.0.4-beta/rdio-scanner-linux-amd64-v6.0.4.zip /src

EXPOSE 3010
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
