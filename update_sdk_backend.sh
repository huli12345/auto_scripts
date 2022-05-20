#!/usr/bin/env bash

cd ~
cd chip-certification-tool/backend
git checkout develop
cd third_party/connectedhomeip/repo/
git checkout master
cd ../..
./scripts/build_chip_tool.sh
./scripts/build_simulated_apps.sh
./scripts/build_managed_docker_images.sh
echo " use docker exec -it <container name> /bin/bash "
echo " execute : python3 ./scripts/build_tests_wrappers.py   ; in the container "  
echo " after which restart the docker container using : docker-compose restart backend "
