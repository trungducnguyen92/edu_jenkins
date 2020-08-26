#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u dockerhubnpc -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG dockerhubnpc/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push dockerhubnpc/$IMAGE:$BUILD_TAG
