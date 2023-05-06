#!/bin/bash

set -eu

mkdir -p /tmp/nginx/html
echo $BASE64_HTML | base64 -d > /tmp/nginx/html/index.html
