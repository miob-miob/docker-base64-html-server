#!/bin/bash

set -u

new_version=0.2.0

#colors
DICKEN_GREEN='\033[1;32m'
GREEN='\033[0;32m'
DICKEN_RED='\033[1;31m'
RED='\033[0;31m'
NO_COLOUR='\033[0m'


repo=miob01/base64-html-server
latest_full=${repo}:latest
new_full=${repo}:${new_version}

#docker login


docker pull ${new_full}
if [ $? -eq 0 ]; then
  echo -e "\n${RED}Tag: ${DICKEN_RED} ${new_full} ${RED} already exists!${NO_COLOUR}"
  exit 1
fi
set -e

# default buildx instance is not capable of multiplatform builds, we can create container to work for us as builder
#docker buildx create --driver docker-container --platform linux/arm64,linux/arm/v8,linux/amd64 --name miob_builder --use --bootstrap
docker buildx use miob_builder
docker buildx build -f Dockerfile --platform linux/amd64,linux/arm64/v8 -t $latest_full -t $new_full --push .
echo -e "\n${GREEN} Done ;) ${NO_COLOUR}"

