#!/bin/bash
set -eu

imaaage_name=d_b64_html_s:latest

docker build -f Dockerfile -t ${imaaage_name} --platform=linux/arm64/v8 .
docker run -it --rm --platform=linux/arm64/v8  --read-only --tmpfs /tmp/nginx:rw,exec,uid=101,gid=101,mode=0750  -p 8888:8080 $imaaage_name



