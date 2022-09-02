#!/bin/bash
echo "Enter the ip address for full scan :$ip "
ip=$ip
read ip
nmap -sN -Pn -A -sS -sC -oN full-scan-result $ip
echo "Finished!"
