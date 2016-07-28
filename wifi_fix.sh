#!/bin/bash 

sudo service network-manager restart
killall nm-applet
/usr/bin/nm-applet &