#!/bin/bash

REMOTE=pi@erebor:/home/pi/NAS
LOCAL_STOCKPILE=/media/Stockpile
PERMISSIONS="--chmod=Du=rwx,Dg=rwx,Do=rx,Fu=rwx,Fg=rwx,Fo=rx"
OWNER="-og --chown=pi:users"
DEFAULT_OPTS="-p  -r -av $OWNER $PERMISSIONS"


echo "photos"
REMOTE_PHOTOS=$REMOTE/Photos/
LOCAL_PHOTS=$LOCAL_STOCKPILE/Photos/

#echo "  from erebor"
#rsync -r -av $REMOTE_PHOTOS $LOCAL_PHOTS    #sync erebor with local
echo "  to erebor"
rsync $DEFAULT_OPTS $LOCAL_PHOTS $REMOTE_PHOTOS    #sync local with erebor


echo "workspace"
LOCAL_WORKSPACE=/home/tomek/workspace/
REMOTE_WORKSPACE=$REMOTE/Development/workspace/
rsync $DEFAULT_OPTS --delete --exclude 'build' --exclude 'node_modules' --exclude 'target'  $LOCAL_WORKSPACE $REMOTE_WORKSPACE


echo "movies"
LOCAL_MOVIES=$LOCAL_STOCKPILE/Movies/Nagrane/
REMOTE_MOVIES=$REMOTE/Movies/
rsync $DEFAULT_OPTS  $LOCAL_MOVIES $REMOTE_MOVIES
