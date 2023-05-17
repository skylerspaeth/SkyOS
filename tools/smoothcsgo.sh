#!/bin/bash

COMPENABLED=$(pgrep -x "picom" > /dev/null && echo true || echo false)

while true; do
  # get active window's pid
  ACTIVEPID=$(xdotool getactivewindow getwindowpid 2> /dev/null)

  # make sure above command returned only a positive integer and if so get process name
  # alternatively, you could use "ps -p $ACTIVEPID -o comm=" but according to my brief tests
  # this is substantially slower than just reading the file it uses directly

  [ ! -z "${ACTIVEPID##*[!0-9]*}" ] && ACTIVENAME=$(awk '{print $2}' /proc/$ACTIVEPID/stat)
  if [ "$ACTIVENAME" == "(csgo_linux64)" ]; then
    if [ "$COMPENABLED" == true ]; then
      pkill picom && COMPENABLED=false
    fi
  else
    if [ "$COMPENABLED" == false ]; then
      picom && COMPENABLED=true
    fi
  fi
  sleep 1;
done
