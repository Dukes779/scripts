#!/bin/sh
for m in {0..1};do
    for n in {0..7};do
        printf "\e[48;5;$((n+m*8))m  \e[m "
    done
    printf "\n"
done
