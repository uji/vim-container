FROM alpine:latest
MAINTAINER uji
RUN apk update
RUN apk upgrade
RUN apk add --no-cache \
    make \
    bash \
    curl \
    gcc \
    git \
    linux-headers \
    musl-dev\
    neovim \
    python-dev \
    py-pip \
    python3-dev \
    py3-pip \
    go \
    npm && \
    rm -rf /var/cache/apk/*
RUN pip3 install --upgrade pip neovim
RUN git clone https://github.com/uji/dotfiles.git --recursive ~/dotfiles
RUN cd ~/dotfiles && make install
WORKDIR ~/src
