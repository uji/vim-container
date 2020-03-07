FROM alpine:latest
MAINTAINER uji
RUN apk update
RUN apk upgrade
RUN apk add --no-cache \
    curl \
    git \
    linux-headers \
    musl-dev\
    vim \
    python3-dev \
    py3-pip && \
    rm -rf /var/cache/apk/*
RUN mkdir ~/.config
RUN cp -r dotfiles/.vim ~/.config/nvim
RUN ln -sf ~/dotfiles/.vimrc ~/.config/nvim/init.vim
ENTRYPOINT ["vim"]
