FROM valian/docker-nginx-auto-ssl

COPY nginx.conf /usr/local/openresty/nginx/conf/
COPY ssl_preread_servername.conf /usr/local/openresty/nginx/conf/

