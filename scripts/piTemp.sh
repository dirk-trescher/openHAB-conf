#!/bin/bash

temp=`cat /sys/class/thermal/thermal_zone0/temp`
tempBy1000=`echo "scale=3; $temp/1000" | bc`
echo $tempBy1000
