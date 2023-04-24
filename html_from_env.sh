#!/bin/bash

set -eu


echo $BASE64_HTML | base64 -d > /usr/share/nginx/html/index.html
