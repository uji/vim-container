FROM alpine:latest
MAINTAINER uji
RUN apk update
RUN apk upgrade
RUN apk add --no-cache \
    bash \
    curl \
    vim \
    git \
    linux-headers \
    musl-dev\
    python3-dev \
    py3-pip \
    go \
    npm && \
    rm -rf /var/cache/apk/*
RUN git clone https://github.com/uji/dotfiles.git --recursive ~/dotfiles
RUN cd ~/dotfiles && git submodule update --remote
RUN cd ~/dotfiles/vimrc && git submodule update --init
RUN sh ~/dotfiles/ln.sh
RUN mkdir /work
WORKDIR /work
