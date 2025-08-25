#!/bin/bash

# Change this to whatever device name you need
# you can find it with wpctl status command
Device='HyperX SoloCast Analog Stereo'

# first find th device from the wpctl status and then
# only get the ID number
Source_ID=$(wpctl status | grep "$Device" | grep -o '[0-9]\+' | head -n 1)

# if empty exit
if [ -z "$Source_ID" ]; then
	notify-send -i audio-input-microphone "Microphone" "No source found!"
	exit 1
fi

# If using easyeffect for the mic, toggling the easyeffects source will not actually mute
# In that case you need to mute the mic directly but if you have as default the easyeffects source
# then it will not show as muted in your waybar module.
# So toggle them both at the same time
wpctl set-mute "$Source_ID" toggle && 
	wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle && 
	notify-send -i audio-input-microphone "Microphone" "Toggle mute on \"$Source_ID. $Device\"."

