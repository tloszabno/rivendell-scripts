#!/bin/bash

#
# Script copied to /usr/lib/pm-utils/sleep.d/
#

sudo service network-manager restart
killall nm-applet
/usr/bin/nm-applet >> /dev/null 2>&1 &
