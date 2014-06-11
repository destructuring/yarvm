RVM := 1.25.26
BUNDLER := 1.6.2

CC := $(shell basename $(shell which clang gcc | head -1))

.PHONY: rvm

all: ready

ready:
	@git submodule update --init --recursive

rvm:
	@libexec/build-rvm $(RVM)

binary:
	@libexec/build-ruby 2.0.0 --with-gcc=$(CC) --with-openssl-dir=$(PKG_HOME)
	@libexec/build-ruby 2.1.2 --with-gcc=$(CC) --with-openssl-dir=$(PKG_HOME)

install: 2.0.0 2.1.2
	@true

binary_jruby:
	@libexec/build-ruby jruby

2.0.0:
	@libexec/install-ruby 2.0.0 $(BUNDLER)

2.1.2:
	@libexec/install-ruby 2.1.2 $(BUNDLER)

jruby:
	@libexec/install-ruby jruby $(BUNDLER)
