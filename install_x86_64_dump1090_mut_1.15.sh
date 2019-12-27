#!/bin/bash

sudo apt update
sudo apt install -y librtlsdr0 lighttpd 
sudo wget -O ${PWD}/dump1090-mutability_1.15.dev_amd64.deb https://github.com/abcd567a/dump1090/releases/download/v1/dump1090-mutability_1.15.dev_amd64.deb
sudo dpkg -i dump1090-mutability_1.15.dev_amd64.deb
sudo wget -O /etc/udev/rules.d/rtl-sdr.rules "https://raw.githubusercontent.com/osmocom/rtl-sdr/master/rtl-sdr.rules" 
sudo dpkg-reconfigure dump1090-mutability
echo "--------------------"
echo "INSTALLATION COMPLETED!"
echo "--------------------"
echo ""
echo "PLEASE REBOOT YOUR Computer....."
echo "PLEASE REBOOT YOUR Computer....."
echo "PLEASE REBOOT YOUR Computer....."
