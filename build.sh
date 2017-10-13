#!/bin/bash

#
# https://docs.docker.com/docker-cloud/builds/push-images/
#

DOCKER_ID_USER=sfuhrm
image=debian-openjdk

docker build -t $image . || exit
docker tag $image $DOCKER_ID_USER/$image || exit
docker image ls $DOCKER_ID_USER/$image 
	
echo docker push $DOCKER_ID_USER/$image


