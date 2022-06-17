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
sudo apt install figlet toilet -y
figlet -f slant "Next Steps:"
echo -e "\e[1;35m ......................................................................................... \e[0m"
echo -e "\e[1;33m use : docker exec -it <container ID> /bin/bash \e[0m"
echo -e "\e[1;32m execute : python3 ./scripts/build_tests_wrappers.py   ; in the container \e[0m"
echo -e "\e[1;33m after which restart the docker container using : docker restart <Container name> \e[0m"
echo -e "\e[1;35m ......................................................................................... \e[0m"
