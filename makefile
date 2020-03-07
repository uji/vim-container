build-vim:
	docker build . -f Dockerfile.vim -t vim

run-vim:
	docker run -it vim

build-nvim:
	docker build . -f Dockerfile.nvim -t nvim

run-nvim:
	docker run -it nvim
