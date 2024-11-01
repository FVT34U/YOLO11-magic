#!/bin/bash
CURDIRNAME=${PWD##*/}

docker run \
        -d \
        --rm \
        --gpus "device=0" \
        -p 6007:8888 \
        -v $(pwd):/wd \
        -v /home/${USER}:/home/${USER} \
        --shm-size=10gb \
        --name yolo11_${USER}_${CURDIRNAME} \
        ${USER}_${CURDIRNAME} \

sleep 1
docker logs yolo11_${USER}_${CURDIRNAME}