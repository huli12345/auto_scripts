#!/usr/bin/env bash

git clone --recursive git@github.com:CHIP-Specifications/chip-certification-tool.git
cd chip-certification-tool/frontend/
git checkout develop
cd ..
cd backend/
git checkout develop
cd third_party/connectedhomeip/repo/
git checkout master
git submodule sync
git submodule update
cd /home/ubuntu
mkdir apps
