#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

#WORKSPACE=/home/centos/mypipeline/jenkins-resources/jenkins/pipeline/jenkins_home/workspace/pipeline-maven-docker
WORKSPACE=/home/centos/mypipeline/jenkins-resources/jenkins/pipeline/jenkins_home/workspace/pipeline-git

docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
