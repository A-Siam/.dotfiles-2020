#!/usr/bin/env bash
# run config from arch wiki
function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# run alttab -w 1 -d 2 -bg "#2F343F" -fg "#ffffff" -frame "#66AAAA" -t 110x80 -i 110x32 &

run wmname LG3D

$HOME/.config/polybar/launch.sh

