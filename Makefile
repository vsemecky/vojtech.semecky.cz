all: clean install build

dev:
	yarn dev

install:
	yarn install

build: install
	yarn build

preview: build
	yarn preview

release: build
	rsync -rlvz --delete dist/ lightsail:/data/www/semecky/vojtech/

clean:
	rm -rf node_modules
	rm -rf dist
