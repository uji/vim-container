FROM alpine:latest
RUN apk update
RUN apk upgrade
RUN apk add --no-cache \
    curl \
    gcc \
    git \
    linux-headers \
    musl-dev\
    neovim \
    python-dev \
    py-pip \
    python3-dev \
    py3-pip && \
    rm -rf /var/cache/apk/*
RUN pip3 install --upgrade pip neovim
