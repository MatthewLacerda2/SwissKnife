#!/bin/bash

sudo echo ""
echo -e "\e[35mUpdating..."
echo -e "\e[37m"

sleep 1

sudo apt-get update

echo ""
echo -e "\e[35mUpgrading..."
echo -e "\e[37m"

sleep 2

sudo apt-get upgrade

echo ""
echo -e "\e[35Updating npm..."
echo -e "\e[37m"

sudo npm update -g

echo ""
echo -e "\e[35mUpdating Firmware..."
echo -e "\e[37m"

sudo fwupdtool get-upgrades
sudo fwupdtool upgrade

echo ""
echo -e "\e[35mSnap refreshing..."
echo -e "\e[37m"

sudo snap refresh

echo ""
echo -e "\e[35mSnap Refreshed!"
echo ""
echo "--------"
echo ""
notify-send -i ./arch.png "Debian Update" "Complete!"
echo -e "\e[32mYou're set. But better not to linger here though, eh?"
echo ""

