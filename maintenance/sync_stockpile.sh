#!/bin/bash

DESTINATION="/run/media/tomek/TL_Backup"

rsync -av /media/Stockpile/Zdjecia $DESTINATION
rsync -av /media/Stockpile/Movies $DESTINATION
rsync -av /home/tomek/workspace $DESTINATION
rsync -av /home/tomek/Scripts $DESTINATION
