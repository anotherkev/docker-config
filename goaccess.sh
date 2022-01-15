#!/bin/bash
sudo docker run -d \
    --name goaccess1 \
    --restart always \
    --network host \
    -e PGID="100" \
    -e PUID="1026" \
    -v /volume1/docker/nginx/logs:/opt/log:ro \
    -v /volume1/docker/goaccess:/config \
    gregyankovoy/goaccess