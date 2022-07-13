#!/bin/bash

echo "Welcome Tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in
    1)
        type="Samurai"
        hp=10
        attack=20
        ;;
    2)
        type="Prisoner"
        hp=20
        attack=40
        ;;
    3)
        type="Prophet"
        hp=60
        attack=80
        ;;
esac

echo "You have chosen the $type class. Your HP is $hp and your attack is $attack."

#First Battle

beast=$(($RANDOM % 2 ))

echo "Your first beast approaches. Prepare to battle. Pick a number between 0-1 . (0/1)"

read tarnished

if [[ $beast == $tarnished ]]; then
    echo "Beast VANQUISHED!! Congrats fellow $type"

else
    echo "You died"
    exit 1

fi

sleep 2

#Second Battle

echo "Boss Battle. Get scared. It's Margit. Pick a number between 0-9. (0/9)"

read tarnished

beast=$(( $RANDOM % 10 ))

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
    echo "Second Beast VANQUISHED!! Congrats fellow $type"

else
    echo "You died"

fi

