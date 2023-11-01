# docker-nginx-auto-ssl


git submodule add git@github.com:falconchen/docker-nginx-auto-ssl.git
向 docker-compose.yml 添加服务

``` yml
version: '3'
services:

  nginx-auto-ssl:    
    build: docker-nginx-auto-ssl
    ports:
      - 80:80
      - 443:443
    volumes:
      - ./docker-nginx-auto-ssl/resty-auto-ssl:/etc/resty-auto-ssl      
      - ./docker-nginx-auto-ssl/conf.d:/usr/local/openresty/nginx/conf/conf.d
    restart: on-failure
```
