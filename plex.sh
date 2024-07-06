#!/bin/bash
sudo docker run -d \
    --name plex1 \
    --restart always \
    --network host \
    -e TZ="America/Toronto" \
    -e PLEX_GID="100" \
    -e PLEX_UID="1026" \
    -v /volume1/docker/plex:/config \
    -v /volume1/docker/plex/Others:/data/others \
    -v /volume1/data/tv/Media:/data/media:ro \
    -v /volume1/docker/nginx/config:/cert:ro \
    plexinc/pms-docker