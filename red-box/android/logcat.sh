#!/bin/bash

echo "Enter the file name for your logs:$log"
log=$log
read log
adb logcat >/pi/home/red-box/loot/$log-log.txt

