#!/bin/sh
echo -n 'Battery level: ' && cat /sys/class/power_supply/BAT1/capacity
sensors
