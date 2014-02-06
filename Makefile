.PHONY: rvm

all: ready

ready:
	@git submodule update --init --recursive
