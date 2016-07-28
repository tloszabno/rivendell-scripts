#!/bin/bash

for (( ; ; ))
do
	sleep 2h
	plank_pid=`ps aux | grep 'plank$' | awk -F' ' '{print $2}'`
	kill plank_pid
	plank
done
