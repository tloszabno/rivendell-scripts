#!/bin/bash
#
# Script run from /usr/lib/pm-utils/sleep.d/ (symlink)
#
LOG_FILE=""/home/tomek/logs/wifi_fix.log"

sleep 10

./wifi_fix.sh >> $LOG_FILE 2>&1

D=`date`
echo "Restarted [$D]" >> $LOG_FILE
