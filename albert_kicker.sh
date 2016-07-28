#!/bin/bash

for (( ; ; ))
do
	sleep 720
	albert_pid=`ps aux | grep 'albert$' | awk -F' ' '{print $2}'`
	if [[ $albert_pid != "" ]] 
	then
		echo "Kicking albert $albert_pid"
		kill $albert_pid 
		sleep 10
		albert &
	fi
done
