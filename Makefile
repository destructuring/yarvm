RVM := 1.24.12
BUNDLER := 1.3.6

.PHONY: rvm

all: ready

ready:
	@git submodule update --init --recursive

rvm:
	@libexec/build-rvm $(RVM)

binary: rvm
	@libexec/build-rvm-ruby 1.9.3
	@libexec/build-rvm-ruby 2.0.0

install: rvm
	@libexec/install-rvm-ruby 1.9.3 $(BUNDLER)
	@libexec/install-rvm-ruby 2.0.0 $(BUNDLER)
