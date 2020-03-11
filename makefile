.envs:
	touch .env

.PHONY: build-vim
build-vim:
	docker build --rm -f Dockerfile.vim -t vim .

.PHONY: run-vim
run-vim: .env
	docker run --rm -it \
	--mount source=vim,target=/root/.cache \
	--mount source=$(VOLUME),target=/root/src \
	--env-file=.env \
	--name vim vim

.PHONY: build-nvim
build-nvim:
	docker build --rm -f Dockerfile.nvim -t nvim .

.PHONY: run-nvim
run-nvim: .env
	docker run --rm -it \
	--mount source=vim,target=/root/.cache \
	--mount source=$(VOLUME),target=/root/src \
	--env-file=.env \
	--name nvim nvim

.PHONY: initv
initv:
	docker volume create vim
