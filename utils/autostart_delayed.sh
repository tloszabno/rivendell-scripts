#!/bin/bash

sleep 5

dropbox stop && DBUS_SESSION_BUS_ADDRESS="" dropbox start  			# icon did not show in tray

/home/tomek/Skrypty/dropbox_kicker.sh & # sometimes dropbox gets break
#/home/tomek/Skrypty/plank_kicker.sh & # after few hours plank is sluggy
#/home/tomek/Skrypty/albert_kicker.sh &  # normal kill to safe partially alberts freq

#chrome middle button
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'none'
gsettings set org.cinnamon.desktop.wm.preferences action-middle-click-titlebar 'none'

