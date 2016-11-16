FROM debian:jessie

ENV \
    NGINX_VERSION=1.11.6

RUN \
    # Install tools, required for building.
    apt-get update && \
    apt-get install -y \
        build-essential \
        curl \
        libpcre3-dev \
        libssl-dev && \

    # Prepare for building.
    mkdir -p /tmp/build
