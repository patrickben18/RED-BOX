#!/bin/bash
figlet -f 3d RED-BOX | lolcat
echo "$string" | sed 's/-/ -/'
echo "$string" | sed 's/-/ -/'
echo "$string" | sed 's/-/ -/'
echo "Pentest your box, which is made specifically for Red Teamers to conduct"
echo "advance stealthy approach towards penetration testing on field"
figlet -f script @patrickben18 | lolcat
echo "$string" | sed 's/-/ -/'
echo "Select the option below to start the assessment"
echo "$string" | sed 's/-/ -/'
echo "<<---------------------------------------------------------->>"
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
echo ">>> System is Online"
echo "$string" | sed 's/-/ -/'
echo ">>> The IP assigned is:" 
ip -4 addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}'
echo "$string" | sed 's/-/ -/'
route -n
else
    echo ">>> System is Offline"
fi
echo "<<---------------------------------------------------------->>"
echo "$string" | sed 's/-/ -/'
echo "$string" | sed 's/-/ -/'

echo "1) Android"
echo "2) Network"

echo "$string" | sed 's/-/ -/'
echo "$string" | sed 's/-/ -/'
echo "Choose a desired number:$num"
num=$num
read num 
 if [ $num -eq 1 ];
 then
echo "<<---------------------------------------------------------->>"
echo "$string" | sed 's/-/ -/'
echo "Android assessment option"
echo "1) Screen record"
echo "2) Shell access"
echo "3) Get logs"
echo "4) Send text message"
echo "5) Turn off the device"
echo "6) Get information of all installed app inside phone"
echo "$string" | sed 's/-/ -/'  
echo "<<---------------------------------------------------------->>"

echo "Choose the desired attack number:$num_droid"
num_droid=$num_droid
read num_droid
 if [ $num_droid -eq 1 ];
then
./android/screen-rec.sh
./redbox.sh
 elif [ $num_droid -eq 2 ];
then
./android/shell.sh
./redbox.sh
 elif [ $num_droid -eq 3 ];
then
./android/logcat.sh
./redbox.sh
 elif [ $num_droid -eq 4 ];
then
./android/sms.sh
./redbox.sh
 elif [ $num_droid -eq 5 ];
then
./android/power.sh
./redbox.sh
 elif [ $num_droid -eq 6 ];
then
./android/applist.sh
./redbox.sh
 else
echo "invalid input"
 fi

 elif [ $num -eq 2 ];
 then
echo "<<---------------------------------------------------------->>"
echo "$string" | sed 's/-/ -/'
echo "Network assessment option"
echo "1) Nmap basic scan"
echo "2) Nmap advance scan"
echo "3) Host discovery in the network"
echo "4) Denial of service on the target"
echo "$string" | sed 's/-/ -/'
echo "<<---------------------------------------------------------->>"
echo "Choose a desired attack number:$num_net" 
num_net=$num_net
read num_net
 if [ $num_net -eq 1 ];
then
./network/nmap1.sh
./redbox.sh
 elif [ $num_net -eq 2 ];
then
./network/nmap-full.sh
./redbox.sh
 elif [ $num_net -eq 3 ];
then
./network/discover.sh
./redbox.sh
 elif [ $num_net -eq 4 ];
then
./network/dos.sh
./redbox.sh
else
echo "Invalisd user input"

exit 1;
fi
fi
