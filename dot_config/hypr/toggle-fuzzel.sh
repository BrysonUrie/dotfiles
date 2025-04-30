#!/bin/bash

if pgrep -x "fuzzel" > /dev/null; then
    # If fuzzel is running, kill it
    pkill -x fuzzel
else
    # If fuzzel is not running, start it
    fuzzel --show drun &
fi

