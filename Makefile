all: clean install build

dev:
	yarn dev

build:
	yarn build

install:
	yarn install
clean:
	rm -rf node_modules
	rm -rf dist
