#!/bin/bash
sudo docker run -d \
    --name plex1 \
    --restart always \
    --network host \
    -e TZ="America/Toronto" \
    -e PLEX_GID="100" \
    -e PLEX_UID="1026" \
    -v /volume1/docker/plex:/config \
    -v /volume1/Backup/TV/Media:/data/media:ro \
    -v /volume1/Others/Videos:/data/others_videos:ro \
    plexinc/pms-docker