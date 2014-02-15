RVM := 1.24.12
BUNDLER := 1.3.6

CC := $(shell basename $(shell which clang gcc | head -1))

.PHONY: rvm

all: ready

ready:
	@git submodule update --init --recursive

rvm:
	@libexec/build-rvm $(RVM)

binary:
	@libexec/build-ruby 1.9.3 --with-gcc=$(CC) --with-openssl-dir=$(PKG_HOME) --with-libyaml-dir=$(PKG_HOME)
	@libexec/build-ruby 2.0.0 --with-gcc=$(CC) --with-openssl-dir=$(PKG_HOME)

binary_jruby:
	@libexec/build-ruby jruby

1.9.3:
	@libexec/install-ruby 1.9.3 $(BUNDLER)

2.0.0:
	@libexec/install-ruby 2.0.0 $(BUNDLER)

jruby:
	@libexec/install-ruby jruby $(BUNDLER)
