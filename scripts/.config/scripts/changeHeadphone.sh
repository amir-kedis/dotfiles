#!/bin/sh

# This script switches between usb drive and speaker 
# I will bind to a keyboard shortcut


CURRENT_PROFILE=$(pactl list sinks | grep "Active Port"| cut -d ' ' -f 3- | uniq)

if [ "$CURRENT_PROFILE" = "analog-output-headphones" ] ; then
        pactl set-sink-port 0 "analog-output-speaker"
else 
        pactl set-sink-port 0 "analog-output-headphones"
fi
