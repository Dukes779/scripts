#!/bin/bash

volume=$(amixer sget Master | awk -F"[][]" '/Left:/ { print $2 }' | head -n1)

echo $volume
