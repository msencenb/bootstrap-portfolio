REPORTER = spec

all: build

build:
	@./node_modules/coffee-script/bin/coffee \
    	-c \
    	-o lib src

bootstrap:
	rm -r src/bootstrap/bootstrap
	$(MAKE) -C ./src/bootstrap bootstrap
	mv -f src/bootstrap/bootstrap/css/* lib/public/css
	mv -f src/bootstrap/bootstrap/img/* lib/public/img
	mv -f src/bootstrap/bootstrap/js/* lib/public/js


clean:
	rm -rf lib
	mkdir lib

watch:
	@./node_modules/coffee-script/bin/coffee \
		-o lib \
		-cw src

test:
	@./node_modules/mocha/bin/mocha \
		--reporter $(REPORTER) \
		test/*.coffee

.PHONY: build bootstrap clean watch test