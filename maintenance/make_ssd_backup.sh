#!/bin/bash

date_now="$(date +'%Y-%m-%d')"
sudo dd if=/dev/sda | bzip2 > /media/Stockpile/Backups/ssd/ssdbck_$date_now.bz2
