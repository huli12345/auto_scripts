#!/usr/bin/env bash

#For docker
#sudo chown $USER /var/run/docker.sock

sudo usermod -a -G docker $USER
#newgrp docker
