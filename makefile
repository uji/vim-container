build-vim:
	docker build --rm -f Dockerfile.vim -t vim .

run-vim:
	docker run --rm -it \
	--mount source=vim,target=/root/.cache \
	--mount source=$(VOLUME),target=/root/src \
	--name vim vim

start-vim:
	docker start vim
	docker exec -it vim /bin/bash

build-nvim:
	docker build --rm -f Dockerfile.nvim -t nvim .

run-nvim:
	docker run --rm -it \
	--mount source=vim,target=/root/.cache \
	--mount source=$(VOLUME),target=/root/src \
	--name nvim nvim

start-nvim:
	docker start nvim
	docker exec -it nvim /bin/bash

initv:
	docker volume create vim
