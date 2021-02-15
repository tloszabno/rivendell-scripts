#!/bin/bash

REMOTE=pi@erebor:/home/pi/NAS
LOCAL_STOCKPILE=/media/Stockpile
PERMISSIONS="--chmod=Du=rwx,Dg=rwx,Do=rx,Fu=rwx,Fg=rwx,Fo=rx"
OWNER="-og --chown=pi:users"
DEFAULT_OPTS="-p  -r -av $OWNER $PERMISSIONS"


echo "sending workspace to erebor"
LOCAL_WORKSPACE=/home/tomek/workspace/
REMOTE_WORKSPACE=$REMOTE/Development/workspace/
rsync $DEFAULT_OPTS --delete --exclude 'build' --exclude 'node_modules' --exclude 'target'  $LOCAL_WORKSPACE $REMOTE_WORKSPACE


echo "getting home movies from ereborn"
LOCAL_MOVIES=$LOCAL_STOCKPILE/Filmy_nagrane/
REMOTE_MOVIES=$REMOTE/Filmy_nagrane/
rsync -r -av $REMOTE_MOVIES $LOCAL_MOVIES    #sync erebor with local


echo "getting movies from ereborn"
LOCAL_MOVIES=$LOCAL_STOCKPILE/Filmy/
REMOTE_MOVIES=$REMOTE/Filmy/
rsync -r -av $REMOTE_MOVIES $LOCAL_MOVIES    #sync erebor with local

echo "getting photos from ereborn "
REMOTE_PHOTOS=$REMOTE/Photos/
LOCAL_PHOTS=$LOCAL_STOCKPILE/Photos/
rsync -r -av $REMOTE_PHOTOS $LOCAL_PHOTS    #sync erebor with local

