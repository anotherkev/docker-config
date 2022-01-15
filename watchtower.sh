#!/bin/bash
sudo docker run -d \
    --name watchtower1 \
    --restart always \
    --network host \
    -v /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower \
    --schedule "0 0 * * * *" --cleanup