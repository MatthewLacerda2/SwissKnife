#!/bin/bash

echo ""
sudo echo -e "\e[32m*** Updating Pacman now"
echo ""

sleep 2

sudo pacman -Syu

echo ""
echo -e "\e[32m*** Updating LocateDB now"
echo ""

sudo updatedb

echo ""
echo -e "\e[32m*** Updating Firmwares now"
echo ""

sudo fwupdtool get-upgrades
sudo fwupdtool upgrade

echo ""
echo -e "\e[32m*** Updating Yay now"
echo ""

yay -Syu # Don't run as 'sudo'. It can cause perma damage

echo ""
echo -e "\e[32m*** Updating Flatpak now"
echo ""

flatpak update
flatpak repair

echo "-------"
echo ""

sudo pacman -Sc

#echo ""
echo "-------"
echo ""
notify-send -i ./arch.png "Arch Update" "Complete!"
echo -e "\e[34mYou're set. But better not to linger here though, eh?"
echo ""
