#!/bin/bash

echo "To get all installed apps details enter file name:$app"
app=$app
read app
adb shell pm list packages  > /home/pi/loot/$app-applst.txt

