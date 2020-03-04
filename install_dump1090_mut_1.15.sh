#!/bin/bash

sudo apt update
sudo apt install -y libusb-1.0-0 librtlsdr0 lighttpd 
sudo wget -O ${PWD}/dump1090-mutability_1.15_dev_armhf.deb https://github.com/abcd567a/dump1090/releases/download/v1/dump1090-mutability_1.15_dev_armhf.deb
sudo dpkg -i dump1090-mutability_1.15_dev_armhf.deb
sudo wget -O /etc/udev/rules.d/rtl-sdr.rules "https://raw.githubusercontent.com/osmocom/rtl-sdr/f2a9a81/rtl-sdr.rules" 
sudo dpkg-reconfigure dump1090-mutability
echo "--------------------"
echo "INSTALLATION COMPLETED!"
echo "--------------------"
echo ""
echo "PLEASE REBOOT YOUR PI....."
echo "PLEASE REBOOT YOUR PI....."
echo "PLEASE REBOOT YOUR PI....."
