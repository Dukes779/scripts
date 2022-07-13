#!/bin/sh

num1=$(exec brightnessctl g)
num2=4882
num3=100

ans=$((num1 * num3))
ans1=$((ans / num2))

echo $ans1
