#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -v -o StrictHostKeyChecking=no /tmp/.auth root@192.168.1.50:/tmp/.auth
scp -v -o StrictHostKeyChecking=no ./pipeline6/jenkins/deploy/publish root@192.168.1.50:/tmp/publish
ssh root@192.168.1.50 "/tmp/publish"
