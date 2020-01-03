#!/usr/bin/env bash

# general
sudo apt-get remove python2.7
sudo pip install pipenv codecov
pipenv install --dev

if [[ "$DOCKER_TESTING" == "true" ]]
then
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get update
    sudo apt-get -y -o Dpkg::Options::="--force-confnew" install docker-ce
fi