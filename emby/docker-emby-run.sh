# !/bin/bash

echo "Start"

docker run -d \
    -v /home/georgy/docker/emby/config:/config \
    -v /home/georgy/media:/mnt/share1 \
    --device /dev/dri:/dev/dri \
    --publish 8096:8096 \
    --publish 8920:8920 \
    --env C=1000 \
    --env GID=100 \
    --env GIDLIST=100 emby/embyserver:latest \

echo "Finish"   
