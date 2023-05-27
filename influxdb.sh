#!/bin/bash
sudo docker run -d \
    --name influxdb1 \
    --restart always \
    --network host \
    -v /volume1/docker/influxdb:/var/lib/influxdb2 \
    influxdb