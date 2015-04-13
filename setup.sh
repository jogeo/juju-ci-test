#!/bin/bash

sudo apt-get install -qy software-properties-common
sudo apt-add-repository -y ppa:juju/stable
sudo apt-get update -qq

sudo apt-get -qy install openssh-client python-pip
sudo apt-get -qy install juju-core juju-local juju-quickstart juju-deployer
sudo pip install boto

sudo chown -R ubuntu:ubuntu /home/ubuntu
mkdir /home/ubuntu/.juju

cd /home/ubuntu
bzr branch lp:juju-ci-tools
bzr branch lp:juju-ci-tools/repository
bzr branch lp:juju-release-tools
