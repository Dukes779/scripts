#!/bin/bash

exec pamixer -t && dunstify -h string:x-dunst-stack-tag:mute mute: $(pamixer --get-mute)!
