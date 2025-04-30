#!/bin/bash

percent=cat /sys/class/power_supply/BAT0/capacity | grep -o "[0-9]*"

echo "$percent"
