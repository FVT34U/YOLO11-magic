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
        --name ${USER}_${CURDIRNAME}_detection \
        ${USER}_${CURDIRNAME} \

sleep 1
docker logs ${USER}_${CURDIRNAME}_detection