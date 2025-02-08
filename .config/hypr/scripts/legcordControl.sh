#!/bin/bash

clients=$(hyprctl clients)
echo $clients | grep "class: legcord"
if (( $? == 1 ))
then
  /bin/legcord
else
  hyprctl dispatch closewindow legcord
fi
