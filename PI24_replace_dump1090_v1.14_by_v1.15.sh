#!/bin/bash
#Check if fr24feed installed and file install_dump1090.sh exists
if ! [ -f  /usr/lib/fr24/install_dump1090.sh ]; then echo "fr24feed not installed, install fr24feed before using this script!"; exit 1; fi

#Check setting is dvbt, if not exit
if ! grep -q "^receiver.*dvbt" /etc/fr24feed.ini; then echo "setting is NOT receiver=dvbt.....halting installation"; exit 1; fi

#Fix PI24 image's "readonly file system".
sudo mount -o remount,rw /

sudo sed -i 's/.*1.14/#&/' /usr/lib/fr24/install_dump1090.sh

sudo sed -i '/wget -O \/tmp\/dump1090-mutability_1.14_armhf.deb/i\    wget -O \/tmp\/dump1090-mutability_1.15_dev_armhf.deb https:\/\/github.com\/abcd567a\/dump1090\/releases\/download\/v1\/dump1090-mutability_1.15_dev_armhf.deb\n    dpkg -i \/tmp/dump1090-mutability_1.15_dev_armhf.deb\n    rm -f /tmp/dump1090-mutability_1.15_dev_armhf.deb\n' /usr/lib/fr24/install_dump1090.sh

sudo dpkg --purge dump1090-mutability

cd /usr/lib/fr24/

sudo ./install_dump1090.sh

sudo service lighttpd force-reload

sudo systemctl restart fr24feed

echo -e "\e[32m---------------\e[39m"
echo -e "\e[32mALL DONE !\e[39m"
echo -e "\e[32m---------------\e[39m"
echo -e "After reboot, go to your broweser and check map on following address"
echo -e "http://IP-of-Pi/dump1090/"
echo -e "http://$(ip route | grep -m1 -o -P 'src \K[0-9,.]*')/dump1090"
echo -e "If new map does not show:"
echo -e "Clear browser cache (Ctrl+Shift+Delete) and Reload Browser (Ctrl+F5)"
echo -e "Check fr24feed status by following command:"
echo -e "\e[32mfr24feed-status\e[39m\n"
echo -e "In case of trouble \e[31mREBOOT RPi\e[39m"
