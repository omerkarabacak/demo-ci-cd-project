#!/bin/bash
#
# This simple shell script build, tag and push custom Jenkins container

VERSION=$1

docker build -t gupguru/jenkins-image-for-kubernetes:$VERSION .
docker tag gupguru/jenkins-image-for-kubernetes:$VERSION gupguru/jenkins-image-for-kubernetes:$VERSION
docker push gupguru/jenkins-image-for-kubernetes:$VERSION