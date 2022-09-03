#!/bin/bash
# ^c$var^ = fg color
# ^b$var^ = bg color

# load colors
# . ~/Documents/Scripts/anexample.sh 
. ~/themes/bar/everforest.sh
volume () {
    volume_val="$(amixer.sh)"
    printf "^b$purple^^c$default^ 墳 "
    printf "^c$purple^^b$default^ $volume_val  "
}

battery() {
  get_capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
  printf "^c$red^^b$default^  "
  printf "^c$red^^b$default^ $get_capacity "
}

brightness() {
  printf "^b$green^^c$default^ 󰃝 "
  printf "^c$green^^b$grey^ $(brightness23.sh) "
}

wlan() {
	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
	up) printf "^c$default^ ^b$blue^ 󰤨 ^d^%s" " ^c$blue^Connected" ;;
	down) printf "^c$blue^ ^b$default^ 󰤭 ^d^%s" " ^c$blue^Disconnected" ;;
	esac
}
# temperature() {
#   temperature_val="$(temperature.sh)"
#      printf "^c$default^ ^b$purple^ 﨎"
#      printf "^c$purple^ ^b$default^ $temperature_val  "
# }

clock() {
	printf "^c$default^ ^b$darkblue^ 󱑆 "
	printf "^c$default^^b$blue^ $(date '+%H:%M')  "
}

while true; do

    sleep 1 && xsetroot -name "$(volume) $(battery) $(brightness) $(wlan) $(clock)"

done
