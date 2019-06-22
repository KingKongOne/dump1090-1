#!/bin/bash

sudo apt update
sudo apt install -y libusb-1.0-0-dev librtlsdr-dev lighttpd 
wget -O ${PWD}/dump1090-mutability_1.15_dev_armhf.deb https://github.com/abcd567a/dump1090/releases/download/v1/dump1090-mutability_1.15_dev_armhf.deb
cd ${PWD}
sudo dpkg -i dump1090-mutability_1.15_dev_armhf.deb
