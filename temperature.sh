#!/bin/bash

temperature=$(cat /sys/class/thermal/thermal_zone0/temp)
figure=1000

final=$(($temperature / $figure))

echo $final
