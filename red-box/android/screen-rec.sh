#!/bin/bash
echo "Enter video name:$vid "
vid=$vid
read vid
echo "enter the time to record (max=180 sec):$tim"
time=$tim
read tim
echo "Enter location where you desired to save on your system:$loc "
loc=$loc
read loc
adb shell screenrecord --time-limit $tim sdcard/$vid.mp4
if [ $? -eq 0 ]; then
adb pull sdcard/$vid.mp4 $loc
echo "Deleting file from the phone"
adb shell rm sdcard/$vid.mp4
else
    echo "error while recording"
fi
echo "Finished returning back to the program"
