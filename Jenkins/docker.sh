#!/bin/bash
#https://www.jenkins.io/doc/book/installing/docker/
#Ubuntu 22.04

#Install docker
sudo apt-get update
sudo apt install docker.io
sudo docker run hello-world

#Jenkins deployment
sudo docker network create jenkins

sudo docker run \
  --name jenkins-docker \
  --rm \
  --detach \
  --privileged \
  --network jenkins \
  --network-alias docker \
  --env DOCKER_TLS_CERTDIR=/certs \
  --volume jenkins-docker-certs:/certs/client \
  --volume jenkins-data:/var/jenkins_home \
  --publish 2376:2376 \
  docker:dind \
  --storage-driver overlay2

sudo docker build -t myjenkins-blueocean:2.387.3-1 .

sudo docker run \
  --name jenkins-blueocean \
  --restart=on-failure \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  myjenkins-blueocean:2.387.3-1

#Get admin password for initial setup
sudo docker container exec -it 4970ea8 bash
cat /var/jenkins_home/secrets/initialAdminPassword