## nginx server which will serve HTML file provided as base 64 encoded environment

#### default port is 8080 !!!
because non privileged port

---
**usage:**

```shell
docker run -it --rm -p 8888:8080 -e BASE64_HTML=$(echo "<div>Hi Hi</div>" | base64) miob01/base64-html-server
```
---

For more details:
```shell
docker run -it --rm -p 8888:8080  miob01/base64-html-server
```
navigate browser on: [localhost:8888](http://localhost:8888/)

---
**config**

supported env variables:
```shell
BASE64_HTML={your html page in base64}
NGINX_PORT=80
NGINX_SERVER_NAME=localhost
NGINX_ROOT_DIR=/usr/share/nginx/html

```



