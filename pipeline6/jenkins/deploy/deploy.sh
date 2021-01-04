#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp /tmp/.auth root@192.168.1.45:/tmp/.auth
scp ./pipeline6/jenkins/deploy/publish root@192.168.1.45:/tmp/publish
scp ./pipeline6/jenkins/build/docker-compose-build.yml root@192.168.1.45:/root/maven/docker-compose.yml
scp ./pipeline6/jenkins/build/Dockerfile-Java root@192.168.1.45:/root/maven/
ssh root@192.168.1.45 "/tmp/publish"
