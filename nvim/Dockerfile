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
    fzf \
    the_silver_searcher \
    linux-headers \
    musl-dev\
    vim \
    neovim \
    python-dev \
    py-pip \
    python3-dev \
    py3-pip \
    go \
    npm && \
    rm -rf /var/cache/apk/*
RUN pip3 install --upgrade pip neovim
RUN git clone https://github.com/uji/dotfiles.git ~/dotfiles
RUN cd ~/dotfiles && sh install-linux.sh
RUN mkdir /work
WORKDIR /work
ENTRYPOINT bash
