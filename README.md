## .deb package of dump1090-mutability ver 1.15~dev
Release 1, Two Package Built on </br>
Package (1) Raspberry Pi 2 Model B ARMv7 / Raspbian Stretch </br>
Package (2) Intel amd64 computer / Ubuntu 18 </br>

### Raspberry Pi / Raspbian - BASH SCRIPT INSTALL

```
sudo bash -c "$(wget -O - https://raw.githubusercontent.com/abcd567a/dump1090/master/install_dump1090_mut_1.15.sh)" 
```
</br>

### Raspberry Pi / Raspbian - MANUAL INSTALL </br>

```
sudo apt update 

sudo apt install libusb-1.0-0-dev librtlsdr-dev lighttpd 

wget -O /home/pi/dump1090-mutability_1.15_dev_armhf.deb https://github.com/abcd567a/dump1090/releases/download/v1/dump1090-mutability_1.15_dev_armhf.deb 

cd /home/pi/ 

sudo dpkg -i dump1090-mutability_1.15_dev_armhf.deb 

sudo wget -O /etc/udev/rules.d/rtl-sdr.rules "https://raw.githubusercontent.com/osmocom/rtl-sdr/f2a9a81/rtl-sdr.rules" 

sudo reboot 

sudo dpkg-reconfigure dump1090-mutability 

```

### Raspberry Pi / PI24 image of FlightRadar24, to replace dump1090-mutbility ver 1.14 by ver 1.15

```
sudo bash -c "$(wget -O - https://raw.githubusercontent.com/abcd567a/dump1090/master/PI24_replace_dump1090_v1.14_by_v1.15.sh)"  
``` 
</br></br>

### x86_64 Computer / Ubuntu & Debian amd64 - BASH SCRIPT INSTALL

```
sudo bash -c "$(wget -O - https://raw.githubusercontent.com/abcd567a/dump1090/master/install_x86_64_dump1090_mut_1.15.sh)"  
``` 
</br>

### x86_64 Computer / Ubuntu & Debian amd64 - MANUAL INSTALL</br>

```
sudo apt update 

sudo apt install librtlsdr0 lighttpd 

wget -O /home/pi/dump1090-mutability_1.15.dev_amd64.deb https://github.com/abcd567a/dump1090/releases/download/v1/dump1090-mutability_1.15.dev_amd64.deb 

cd /home/pi/ 

sudo dpkg -i dump1090-mutability_1.15.dev_amd64.deb 

sudo wget -O /etc/udev/rules.d/rtl-sdr.rules "https://raw.githubusercontent.com/osmocom/rtl-sdr/f2a9a81/rtl-sdr.rules"  

sudo reboot 

sudo dpkg-reconfigure dump1090-mutability   

```  
</br>

