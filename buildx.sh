#!/bin/bash
TAG=latest

echo "#########################################################################"
echo "sched_setaffinity example"
echo "#########################################################################"
BUILDX_ARGS=$1
echo $BUILDX_ARGS
docker buildx build $BUILDX_ARGS   \
    --build-arg BUILD_DATE="$(date +"%Y-%m-%dT%H:%M:%SZ")" \
    --file Dockerfile \
    --platform linux/arm/v7,linux/amd64,linux/arm64 \
    --push -t  pstenkamp/sched-setaffinity:$TAG .

