#!/bin/bash

#This is the fix for mircosoft mouse scrolling issue after wake from a suspension
if [[ $1 == post ]]; then
    modprobe -r usbhid
    modprobe usbhid
fi

