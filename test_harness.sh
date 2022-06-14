#!/usr/bin/env bash

git clone --recursive git@github.com:CHIP-Specifications/chip-certification-tool.git
cd chip-certification-tool/frontend/
git checkout develop
cd ..
cd backend/
git checkout develop
cd third_party/connectedhomeip/
rm -rf repo
cd /home/ubuntu
mkdir apps
