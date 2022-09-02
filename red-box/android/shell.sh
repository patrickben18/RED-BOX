#!/bin/bash

adb devices | grep "\<device\>" 


if [ $? -eq 0 ]; then
    echo "Phone detected"
echo "Getting you the shell access to the device"
adb shell
else
    echo "Phone not detected"
fi

