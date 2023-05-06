FROM nginx:1.23-bullseye


ENV BASE64_HTML=PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9ImVuIj4KPGhlYWQ+CiAgICA8bWV0YSBjaGFyc2V0PSJVVEYtOCI+CiAgICA8dGl0bGU+QmFzZTY0IEhUTUwgc2VydmVyIDwvdGl0bGU+CjwvaGVhZD4KPGJvZHk+CjxoMj5iYXNlNjQgaHRtbCBzZXJ2ZWQgYnkgbmdpbnggKGRlZmF1bHQgaHRtbCk8L2gyPgoKPGhyLz4KPGRpdj4KICAgIDxoMz5Nb3RpdmF0aW9uIGFuZCB1c2UtY2FzZXM8L2gzPgogICAgPHA+CiAgICAgICAgSWYgeW91IHdhbnQgdG8gcXVpY2tseSB0ZXN0IHNhbWUgc3RhdGljIHBhZ2VzLCB3aXRob3V0IHZvbHVtZXMgYW5kIGNvbXBsZXggY29uZmlndXJhdGlvbiBpbiBjb250YWluZXItZnJpZW5kbHkgZW52aXJvbm1lbnQsCiAgICAgICAgeW91IG1heSBmaW5kIHRoaXMgb25lIGhlbHBmdWwgOykKICAgIDwvcD4KICAgIDxoci8+CgogICAgPGgzPlVzYWdlOjwvaDM+CiAgICA8cCBzdHlsZT0icGFkZGluZy10b3A6IDFlbSI+CiAgICAgICAgVG8gcHJvdmlkZSB5b3VyIGh0bWwsIHVzZSA8c3Ryb25nPkJBU0U2NF9IVE1MPC9zdHJvbmc+IGVudmlyb25tZW50IHZhcmlhYmxlLgogICAgPC9wPgogICAgPHA+VGFrZSB5b3VyIGh0bWwgZmlsZSwgY29udmVydCBpdCwgdG8gYmFzZTY0LCBmb3IgZXhhbXBsZTo8L3A+CiAgICA8cHJlIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiAjZjBmMGYwIj4KICAgICAgICA8Y29kZSBzdHlsZT0iY29sb3I6ICM4MDgwODAiPi8vIG91dHB1dCBiYXNlNjQgZW5jb2RlZCBodG1sIGZpbGU8L2NvZGU+CiAgICAgICAgY2F0IG15X3NpbXBsZV9wYWdlLmh0bWwgfCBiYXNlNjQKICAgIDwvcHJlPgoKICAgIDxoci8+CiAgICA8cD4KICAgICAgICBUbyBydW4gY29udGFpbmVyIHdpdGggeW91ciBodG1sIHRyeSBzb21ldGhpbmcgbGlrZSB0aGF0OgoKICAgIDwvcD4KICAgIDxwcmUgc3R5bGU9ImJhY2tncm91bmQtY29sb3I6ICNmMGYwZjA7IG92ZXJmbG93LXdyYXA6IGJyZWFrLXdvcmQ7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcCI+CiAgICAgICAgaHRtbF9hc19iYXNlNjQ9UENGRVQwTlVXVkJGSUdoMGJXdytDanhvZEcxc0lHeGhibWM5SW1WdUlqNEtQR2hsWVdRK0NpQWdJQ0E4YldWMFlTQmphR0Z5YzJWMFBTSlZWRVl0T0NJK0NpQWdJQ0E4ZEdsMGJHVStWR2wwYkdVOEwzUnBkR3hsUGdvOEwyaGxZV1ErQ2p4aWIyUjVQZ29nSUNBZ1BHUnBkaUJwWkQwaVpuVnVheUlnYzNSNWJHVTlJbVJwYzNCc1lYazZJR1pzWlhnN1lXeHBaMjR0WTI5dWRHVnVkRG9nWTJWdWRHVnlPM0JoWkdScGJtYzZJREZsYlR0bWJHVjRMV1pzYjNjNklHTnZiSFZ0YmpzZ1lXeHBaMjR0YVhSbGJYTTZJR05sYm5SbGNpSStDaUFnSUNBZ0lDQWdQR2d4SUdOc1lYTnpQU0pvYUNJK1JuVnVhM2s4TDJneFBnb2dJQ0FnSUNBZ0lEeG9NaUJqYkdGemN6MGlhR2dpUGtaMWJtdDVQQzlvTWo0S0lDQWdJQ0FnSUNBOGFETWdZMnhoYzNNOUltaG9JajVHZFc1cmVUd3ZhRE0rQ2lBZ0lDQWdJQ0FnUEdnMElHTnNZWE56UFNKb2FDSStSblZ1YTNrOEwyZzBQZ29nSUNBZ0lDQWdJRHhvTlNCamJHRnpjejBpYUdnaVBrWjFibXQ1UEM5b05UNEtJQ0FnSUNBZ0lDQThhRFlnWTJ4aGMzTTlJbWhvSWo1R2RXNXJlVHd2YURZK0NpQWdJQ0E4TDJScGRqNEtQQzlpYjJSNVBnb0tQSE5qY21sd2RENEtJQ0FnSUdaMWJtTjBhVzl1SUdOdmJHOXljeWdwZXdvZ0lDQWdJQ0FnSUdaMWJtTjBhVzl1SUhKaGJtUkpiblFvWm5KdmJUMHdMSFJ2UFRFd0tYc0tJQ0FnSUNBZ0lDQWdJQ0FnY21WMGRYSnVJRTFoZEdndVpteHZiM0lvVFdGMGFDNXlZVzVrYjIwb0tTb29LSFJ2TFdaeWIyMHBLekVwS1FvZ0lDQWdJQ0FnSUgwS0lDQWdJQ0FnSUNCbWRXNWpkR2x2YmlCeVlXNWtRMjlzYjNJb0tYc0tJQ0FnSUNBZ0lDQWdJR052Ym5OMElHTnZiRzl5SUQwZ1czSmhibVJKYm5Rb01Dd3lOVFVwTEhKaGJtUkpiblFvTUN3eU5UVXBMSEpoYm1SSmJuUW9NQ3d5TlRVcFhRb2dJQ0FnSUNBZ0lDQWdiR1YwSUhKbGN5QTlJR052Ykc5eUxtMWhjQ2hqUFQ1akxuUnZVM1J5YVc1bktERTJLUzV3WVdSVGRHRnlkQ2d5TENjd0p5a3BDaUFnSUNBZ0lDQWdJQ0J5WlhSMWNtNGdJaU1pSzNKbGN5NXFiMmx1S0NjbktRb2dJQ0FnSUNBZ0lIMEtJQ0FnSUNBZ1kyOXVjM1FnWTJocGJHUnpJRDBnWkc5amRXMWxiblF1WjJWMFJXeGxiV1Z1ZEhOQ2VVTnNZWE56VG1GdFpTZ25hR2duS1FvZ0lDQWdJQ0JqYjI1emRDQjBaWGgwY3lBOUlGc25RMjlqYnljc0owWjFibXQ1SjEwS0lDQWdJQ0FnWm5WdVkzUnBiMjRnY21WamRYSnphWFpsVTJWMFQzVjBJQ2dwZXdvZ0lDQWdJQ0FnSUdOdmJuTjBJR05vSUQwZ1kyaHBiR1J6TG1sMFpXMG9jbUZ1WkVsdWRDZ3dMR05vYVd4a2N5NXNaVzVuZEdndE1Ta3BDaUFnSUNBZ0lDQWdZMmd1YzNSNWJHVXVZMjlzYjNJOWNtRnVaRU52Ykc5eUtDa0tJQ0FnSUNBZ0lDQmphQzVwYm01bGNraFVUVXc5ZEdWNGRITmJjbUZ1WkVsdWRDZ3dMSFJsZUhSekxteGxibWQwYUMweEtWMEtJQ0FnSUNBZ0lDQnpaWFJVYVcxbGIzVjBLSEpsWTNWeWMybDJaVk5sZEU5MWRDeHlZVzVrU1c1MEtERXdMREV3TUNrcENpQWdJQ0FnSUgwS0lDQWdJQ0FnY21WamRYSnphWFpsVTJWMFQzVjBLQ2tLSUNBZ0lIMEtJQ0FnSUhkcGJtUnZkeTVoWkdSRmRtVnVkRXhwYzNSbGJtVnlLQ2RzYjJGa0p5eGpiMnh2Y25NcENqd3ZjMk55YVhCMFBnbzhMMmgwYld3KwoKCiAgICAgICAgZG9ja2VyIHJ1biAtLXJtIC1wIDg4ODg6ODA4MCAtZSBCQVNFNjRfSFRNTD0kaHRtbF9hc19iYXNlNjQgbWlvYjAxL2Jhc2U2NC1odG1sLXNlcnZlcjpsYXRlc3QKICAgIDwvcHJlPgoKICAgIDxwPlNlZSBzZXJ2ZWQgcGFnZSBvbiA8c3Ryb25nPmh0dHA6Ly9sb2NhbGhvc3Q6ODg4OC88L3N0cm9uZz48L3A+CgoKPC9kaXY+CjwvYm9keT4KPC9odG1sPg==

# non priveleged port
ENV NGINX_PORT=8080
ENV NGINX_SERVER_NAME=localhost
ENV NGINX_ROOT_DIR=/tmp/nginx/html

# numbers here on start of file is for ordering of bootsdtrap sh scripts see: https://github.com/nginxinc/docker-nginx/tree/master/entrypoint

# this will copy all neseccary files and creates symlinks in order to
# be able run container in read only mode and only place where it will write is  /tmp/nginx
# in order do so mount writable volume/mount on /tmp/nginx
COPY hack_ro_fs.sh /docker-entrypoint.d/01-hack_ro_fs.sh
RUN chmod +x /docker-entrypoint.d/01-hack_ro_fs.sh



# script that will create html file from ENV
COPY html_from_env.sh /docker-entrypoint.d/40-html_from_env.sh
RUN chmod +x /docker-entrypoint.d/40-html_from_env.sh

# diagnose
#RUN echo "env" > /docker-entrypoint.d/30-woho.sh
#RUN chmod +x /docker-entrypoint.d/30-woho.sh

# tweaks to make this image work for nginx:nginx u:g
COPY custom_nginx.conf /etc/nginx/nginx.conf


# template to override conf with env variables
COPY nginx_server_template.conf /etc/nginx/templates/default.conf.template

#ENVS needed in in https://github.com/nginxinc/docker-nginx/blob/master/entrypoint/20-envsubst-on-templates.sh
ENV NGINX_ENVSUBST_TEMPLATE_DIR /tmp/nginx/templates
ENV NGINX_ENVSUBST_OUTPUT_DIR /tmp/nginx/conf.d

# remove ip6 support (it would complicate stuff)
RUN rm /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
RUN mkdir /tmp/nginx
RUN chown -R nginx:nginx /tmp/nginx/

USER 101

