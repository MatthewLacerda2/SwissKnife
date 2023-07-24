#!/bin/bash

echo ""
echo -e "\e[32m*** Updating Pacman now\e[0m"
echo ""

sleep 2

sudo pacman -Syu
sudo pacman -Sc

echo ""
echo -e "\e[32m*** Updating Yay now\e[0m"
echo ""

sleep 3

yay -Syu # Don't run as 'sudo'. It can cause perma damage

echo ""
echo -e "\e[32m*** Updating Flatpak now\e[0m"
echo ""

sleep 3

flatpak update
flatpak repair

echo ""
echo -e "\e[32m*** Updating LocateDB now\e[0m"
echo ""

sudo updatedb

echo ""
echo -e "\e[32m*** Updating Firmwares now\e[0m"
echo ""

sudo fwupd

echo ""
echo "-------"
echo ""
echo -e "\e[32m You're set. But better not to linger here though, eh?\e[0m"
echo ""
