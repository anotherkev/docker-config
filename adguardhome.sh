#!/bin/bash
sudo docker run -d \
    --name adguardhome1 \
    --restart always \
    --network host \
    -v /volume1/docker/adguardhome/conf:/opt/adguardhome/conf \
    -v /volume1/docker/adguardhome/work:/opt/adguardhome/work \
    adguard/adguardhome