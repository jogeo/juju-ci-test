#!/bin/bash
set -e

cd /home/ubuntu
pushd juju-ci-tools
bzr pull
popd
pushd repository
bzr pull
popd
pushd juju-release-tools
bzr pull
popd

if [ -f /home/ubuntu/juju-ci-test.sh ]; then
    /home/ubuntu/juju-ci-test.sh
else
    ssh-agent /bin/bash
fi
