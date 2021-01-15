#!/bin/bash
#
# Script to keep mouse pointer moving so that, for example, Suspend to RAM timeout does not occur.
# 
# The mouse pointer will move around its current position on the screen, i.e. around any position
# on the screen where you place the pointer. However, if you prefer it to move around the centre
# of the screen then change mousemove_relative to mousemove in the xdotool command below.
#
# Set LENGTH to 0 if you do not want the mouse pointer to actually move.
# Set LENGTH to 1 if you want the mouse pointer to move just a tiny fraction.
# Set LENGTH to e.g. 100 if you want to see more easily the mouse pointer move.
LENGTH=1
#
# Set DELAY to the desired number of seconds between each move of the mouse pointer.
DELAY=90
#
while true
do
    for ANGLE in 0 90 180 270
    do
        dt=$(date '+%Y/%m/%d %H:%M:%S');
        echo "$dt moving mouse"
        xdotool mousemove_relative --polar $ANGLE $LENGTH
        sleep $DELAY
    done
done


#!/bin/bash
#
# Script to keep mouse pointer moving while audio is playing so that, for example, Suspend to RAM timeout
# does not occur while listening to music or watching a video (with sound).
# 
# The mouse pointer will move around its current position on the screen, i.e. around any position
# on the screen where you place the pointer. However, if you prefer it to move around the centre
# of the screen then change mousemove_relative to mousemove in the xdotool command below.
#
# Set LENGTH to 0 if you do not want the mouse pointer to move.
# Set LENGTH to 1 if you want the mouse pointer to move just a tiny fraction.
# Set LENGTH to e.g. 100 if you want to see more easily the mouse pointer move.
LENGTH=1
#
# Set DELAY to the desired number of seconds between each move of the mouse pointer.
DELAY=5
#
while true
do
    if [[ `cat /proc/asound/card*/pcm*/sub*/status | grep RUNNING | wc -l` -ne 0 ]]; then
        for ANGLE in 0 90 180 270
        do
            xdotool mousemove_relative --polar $ANGLE $LENGTH
            sleep $DELAY
        done
    fi
done




#install xdotool
sudo apt-get install -y xdotool
