#!/bin/bash

COMPENABLED=$(xfconf-query -c xfwm4 -p /general/use_compositing)

while true; do
    #get active window's pid
    ACTIVEPID=$(xdotool getactivewindow getwindowpid 2> /dev/null)

    #make sure above command returned only a positive integer and if so get process name
    #alternatively, you could use "ps -p $ACTIVEPID -o comm=" but according to my brief tests
    #this is substantially slower than just reading the file it uses directly

    [ ! -z "${ACTIVEPID##*[!0-9]*}" ] && ACTIVENAME=$(awk '{print $2}' /proc/$ACTIVEPID/stat)
    if [ "$ACTIVENAME" == "(csgo_linux64)" ]; then
        if [ "$COMPENABLED" == true ]; then
            xfconf-query -c xfwm4 -p /general/use_compositing -t bool -s false && COMPENABLED=false
        fi
    else
        if [ "$COMPENABLED" == false ]; then
            xfconf-query -c xfwm4 -p /general/use_compositing -t bool -s true && COMPENABLED=true
        fi
    fi
    sleep 1;
done
