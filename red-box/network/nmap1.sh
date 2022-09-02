#!/bin/bash
echo "Enter the ip address:$ip "
ip=$ip
read ip
nmap -sN -Pn -A $ip
echo "Finished!"
