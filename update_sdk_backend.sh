#!/usr/bin/env bash

cd /home/ubuntu
cd chip-certification-tool/backend
git fetch --all
git checkout develop
git pull
cd third_party/connectedhomeip/repo/
git fetch --all
git checkout master
git pull
git submodule sync
git submodule update
cd ../../..
#./scripts/build_chip_tool.sh
#./scripts/build_simulated_apps.sh
./scripts/build_managed_docker_images.sh
echo " use : docker exec -it <container ID> /bin/bash "
echo " execute : python3 ./scripts/build_tests_wrappers.py   ; in the container "
echo " after which restart the docker container using : docker restart <Container name> "
