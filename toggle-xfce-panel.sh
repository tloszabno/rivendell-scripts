#!/bin/sh


CHANNEL=xfce4-panel
PANELID=0

PROP=/panels/panel-$PANELID/autohide-behavior
PROP2=/panels/panel-$PANELID/autohide
 
VISIBLE=`xfconf-query -c $CHANNEL -p $PROP2`

if [ "$VISIBLE" = "true" ] ; then
    xfconf-query -c $CHANNEL -p $PROP -t int -s 1
    xfconf-query -c $CHANNEL -T -p $PROP2
else
	xfconf-query -c $CHANNEL -p $PROP -t int -s 0
    xfconf-query -c $CHANNEL -T -p $PROP2
fi
