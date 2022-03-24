#!/usr/bin/env bash

#
# Copyright (c) 2021 Project CHIP Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
sudo mount /dev/sda1 /media

#Installing dcfldd function
sudo apt-get update -y
sudo apt-get install -y dcfldd

# Change sdb to the specific partition and add a image name
sudo dcfldd if=/dev/mmcblk0 of=/media/vID.img

#Installing pishrink
wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh
chmod +x pishrink.sh
sudo mv pishrink.sh /usr/local/bin

# -z for .gz and -Z for .xz Format
cd /media/
sudo pishrink.sh -z vID.img
