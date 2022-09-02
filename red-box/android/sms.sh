#!/bin/bash

adb shell service check isms

echo "Enter the phone number: $phonenum"
phonenum="$phonenum"
read $phonenum
echo "Enter the sms text: $smsbody"
smsbody="$smsbody"
read $smsbody

# use adb to say "start the app we use for SMS"
# with the following information
adb shell am start \
	-a android.intent.action.SENDTO \
	-d sms:"$phonenum" \
	--es sms_body "$smsbody" \
	--ez exit_on_sent true

# wait for the GUI to do stuff
sleep 1

# press key 22 (D-pad Right)
adb shell input keyevent 66

# wait for the GUI to do stuff
sleep 1

# press key 66 (Enter)
adb shell input keyevent 66


