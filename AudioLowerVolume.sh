#!/bin/bash 

exec pamixer -d 5 --allow-boost && dunstify -h string:x-dunst-stack-tag:volume volume: $(pamixer --get-volume)% 
