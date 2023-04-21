#!/bin/bash

set -ue

docker run --rm -p 9007:80  --volume $(pwd)/test_script.sh:/docker-entrypoint.d/kunda.sh -e kunda=zla --platform linux/arm64/v8 nginx:1.23-bullseye