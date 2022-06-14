#!/usr/bin/env bash

cd /home/ubuntu
git clone --recursive git@github.com:project-chip/connectedhomeip.git
cd connectedhomeip/
git checkout master
mv connectedhomeip/ chip-certification-tool/backend/third_party/connectedhomeip/repo
echo "REPO MOVED"
