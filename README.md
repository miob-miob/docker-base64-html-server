## nginx server which will serve HTML file provided as base 64 encoded environment


---
**usage:**


---
**config**


supported env variables:
```shell
BASE64_HTML=
NGINX_PORT=80
NGINX_SERVER_NAME=localhost
NGINX_ROOT_DIR=/usr/share/nginx/html

```

```shell
#from parental image:

NGINX_ENVSUBST_TEMPLATE_DIR=/etc/nginx/templates
NGINX_ENVSUBST_TEMPLATE_SUFFIX=.template
NGINX_ENVSUBST_OUTPUT_DIR=/etc/nginx/conf.d
NGINX_ENVSUBST_FILTER
```



