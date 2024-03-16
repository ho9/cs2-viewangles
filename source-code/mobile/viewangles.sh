#!/bin/sh
mkdir shared
mount -t ios . shared
clear
while true; do
        line=$(tail -n 1 shared/console.log | cut -c 35- | rev | cut -c 13- | rev)
        printf "\r%s" "viewangles: $line"
        sleep 0.5
done