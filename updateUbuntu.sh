#!/bin/bash

sudo echo ""
echo -e "\e[35mUpdating..."
echo ""

sleep 1

sudo apt-get update

echo ""
echo -e "\e[35mUpgrading..."
echo ""

sleep 2

sudo apt-get upgrade

echo ""
echo -e "\e[35mUpdating Firmware..."
echo ""

sudo fwupdtool get-upgrades
sudo fwupdtool upgrade

echo ""
echo -e "\e[35mSnap refreshing..."
echo ""

sudo snap refresh

echo ""
echo -e "\e[35mSnap Refreshed!"
echo ""
echo "--------"
echo ""
notify-send -i ./arch.png "Deb Update" "Complete!"
echo -e "\e[32mYou're set. But better not to linger here though, eh?"
echo ""