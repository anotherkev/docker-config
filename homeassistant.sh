#!/bin/bash
sudo docker run -d \
    --name homeassistant1 \
    --restart always \
    --network host \
    -e value="America/Toronto" \
    -e variable="CA" \
    -v /volume1/docker/homeassistant:/config \
    -v /volume1/docker/homeassistant/media:/media \
    homeassistant/home-assistant