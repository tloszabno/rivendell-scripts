#!/bin/bash

for (( ; ; ))
do
	dropbox_status=`dropbox status`
	if [[ $dropbox_status == *"isn't running"* ]] 
	then
		echo "Kicking dropbox"
		DBUS_SESSION_BUS_ADDRESS="" dropbox start
	fi
	sleep 20
done
