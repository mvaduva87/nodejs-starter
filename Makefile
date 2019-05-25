NAME := $(shell jq -r '.name' package.json)
VERSION := $(shell jq -r '.version' package.json)
DOCKER_IMAGE := sample/$(NAME):$(VERSION)

docker-build:
	docker build -t $(DOCKER_IMAGE) .