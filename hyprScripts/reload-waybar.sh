#!/bin/bash
killall -9 waybar
sleep 1
waybar > /dev/null 2>&1 &
