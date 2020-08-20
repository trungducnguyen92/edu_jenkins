#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp  /tmp/.auth root@113.164.246.4:/tmp/.auth
scp ./jenkins/deploy/publish root@113.164.246.4:/tmp/publish
ssh root@113.164.246.4 "/tmp/publish"
