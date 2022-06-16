#!/usr/bin/env bash

sudo usermod -a -G docker $USER

#sudo chown root:docker /var/run/docker.sock
#sudo chown -R root:docker /var/run/docker

#newgrp docker
