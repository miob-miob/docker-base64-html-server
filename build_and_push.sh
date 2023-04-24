#!/bin/bash

set -ue

image_tag=miob01/base64-html-server:latest
#docker login

# default buildx instance is not capable of multiplatform builds, we can create container to work for us as builder
#docker buildx create --driver docker-container --platform linux/arm64,linux/arm/v8,linux/amd64 --name miob_builder --use --bootstrap


docker buildx build -f Dockerfile --platform linux/amd64,linux/arm64/v8 -t $image_tag --push .

