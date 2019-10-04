#!/bin/bash

echo ""
echo "This script copies a udev rule to /etc to facilitate bringing"
echo "up the turtlebot3 usb connection."
echo ""

sudo cp `rospack find minion_bringup`/99-minion-cdc.rules /etc/udev/rules.d/

echo ""
echo "Reload rules"
echo ""
sudo udevadm control --reload-rules
sudo udevadm trigger
