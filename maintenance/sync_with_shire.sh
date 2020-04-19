#!/bin/bash

REMOTE=pi@192.168.1.5:/home/pi/NAS
LOCAL_STOCKPILE=/media/Stockpile


echo "photos"
REMOTE_PHOTOS=$REMOTE/Photos/
LOCAL_PHOTS=$LOCAL_STOCKPILE/Photos/

echo "  from shire"
rsync -r -av $REMOTE_PHOTOS $LOCAL_PHOTS    #sync shire with local
echo "  to shire"
rsync -r -av --delete $LOCAL_PHOTS $REMOTE_PHOTOS    #sync local with shire


echo "workspace"
LOCAL_WORKSPACE=/home/tomek/workspace/
REMOTE_WORKSPACE=$REMOTE/Development/workspace/
rsync -r -av --delete --exclude 'build' --exclude 'node_modules' --exclude 'target'  $LOCAL_WORKSPACE $REMOTE_WORKSPACE


echo "movies"
LOCAL_MOVIES=$LOCAL_STOCKPILE/Movies/Nagrane/
REMOTE_MOVIES=$REMOTE/Movies/
rsync -r -av  $LOCAL_MOVIES $REMOTE_MOVIES
