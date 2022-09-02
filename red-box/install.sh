#!/bin/bash

#installation of requirments
echo "installing all the requirments"
apt install adb git nmap figlet lolcat hping3
sleep 3
git clone  https://github.com/xero/figlet-fonts.git
sudo cp figlet-fonts/* /usr/share/figlet/.
