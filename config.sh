#!/usr/bin/env bash
cd /home/ubuntu
sudo cp chip-certification-tool/backend/default_test_environment.config  chip-certification-tool/backend/test_environment.config
ln -s chip-certification-tool/backend/test_environment.config test-harness.config
ln -s chip-certification-tool/backend/third_party/connectedhomeip/repo connectedhomeip
#ln -s /etc/netplan/50-cloud-init.yaml network.config
ln -s chip-certification-tool/cli cli
sudo mv artifacts/dbus-fi.w1.wpa_supplicant1.service /etc/systemd/system/
sudo mv artifacts/wpa_supplicant.conf /etc/wpa_supplicant/
sudo mv artifacts/modules /etc/modules
mv artifacts/start_otbr_setup.sh /home/ubuntu/
mv artifacts/start_test_harness.sh /home/ubuntu/
sudo chmod u+x start_otbr_setup.sh
sudo chmod u+x start_test_harness.sh
sudo mv artifacts/sysctl.conf /etc/sysctl.conf
cd /home/ubuntu
sudo mv artifacts/rc.local /etc/
sudo chown root /etc/rc.local
sudo chmod 755 /etc/rc.local
#sudo systemctl enable rc-local
rm -rf artifacts/
cd cli
source $HOME/.poetry/env && poetry update && poetry install
