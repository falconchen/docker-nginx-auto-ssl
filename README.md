# docker-nginx-auto-ssl

docker-compose.yml 使用方式

``` 
version: '3'
services:
      
  nginx-auto-ssl:    
    build: docker-nginx-auto-ssl
    ports:
      - 80:80
      - 443:443
    volumes:
      - ./resty-auto-ssl:/etc/resty-auto-ssl      
      - ./conf.d:/usr/local/openresty/nginx/conf/conf.d
    restart: on-failure
