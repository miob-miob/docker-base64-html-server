#!/bin/bash

set -eu
COLOR='\033[0;31m'
COLOR_TWO='\033[0;32m'
NO_COLOR='\033[0m'

# assume we mounted writable volume to tmp/nginx
# this will be only place where fs is writable

# as this can happen  multiple times over container restarts in k8
# we do not want it to fail hardly
set +e
cp -R /etc/nginx /tmp
if [ $? -gt 0 ]; then
  echo -e "${COLOR} Copying on writable mount on /tmp/nginx failed , it can be because of you did not mount it, or container was restarted and files already existed!${NO_COLOR}"
else
  echo -e "${COLOR_TWO}Copied to writable /tmp/nginx/ ${NO_COLOR}"
fi

# same case as above - maybe not mounted, maybe container restarted in kubernetes pod and files already exists
# todo we can try to use container id (in docker hostname) to scope restarts
mkdir /tmp/nginx/client_temp
mkdir /tmp/nginx/proxy_temp
mkdir /tmp/nginx/fastcgi_temp
mkdir /tmp/nginx/uwsgi_temp
mkdir /tmp/nginx/scgi_temp

touch /tmp/nginx/nginx.pid
set -e



