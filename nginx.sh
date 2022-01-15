#!/bin/bash
sudo docker run -d \
    --name nginx1 \
    --restart always \
    -p 8080:80 \
    -p 8443:443 \
    -v /volume1/docker/nginx/config:/etc/nginx \
    -v /volume1/docker/nginx/static:/usr/share/nginx/html \
    -v /volume1/docker/nginx/logs:/var/log/nginx/log \
    nginx