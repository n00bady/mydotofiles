#!/bin/bash

curWS=$(hyprctl -j activeworkspace | jq '.id')

if [[ "$1" == "+" ]]; then
	nextWS=$((${curWS}+1))
	hyprctl dispatch workspace m~${nextWS}
elif [[ "$1" == "-" ]]; then
	nextWS=$((${curWS}-1))
	echo "$nextWS"
	hyprctl dispatch workspace m~${nextWS}
fi
