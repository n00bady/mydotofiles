#!/bin/bash

COUNT="$(dunstctl count waiting)"
ENABLED=""
DISABLED=""

DIR="/tmp/dunst_waybar_module"
STATUS="status.txt"

mkdir -p $DIR && touch "$DIR/$STATUS" > /dev/null 2>&1 &&

if [ "$COUNT" != "0" ]; then
	DISABLED=" $COUNT"
fi

if dunstctl is-paused | grep -q "false"; then
	echo $ENABLED > $DIR/$STATUS
else
	echo $DISABLED > $DIR/$STATUS
fi

if [ ! -e $DIR/$STATUS ] || [ ! -s $DIR/$STATUS ]; then 
	echo $ENABLED
else 
	echo "$(<$DIR/$STATUS)"
fi
