#!/bin/bash
CURDIRNAME=${PWD##*/}

docker build . -t ${USER}_${CURDIRNAME}