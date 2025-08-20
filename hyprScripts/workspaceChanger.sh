#!/bin/bash

if [[ "$1" == "+" ]]; then
	hyprctl dispatch workspace m+1
elif [[ "$1" == "-" ]]; then
	hyprctl dispatch workspace m-1
fi
