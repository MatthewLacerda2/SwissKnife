#!/bin/bash

echo ""
echo "*** Updating Pacman now"
echo ""

sleep 2

sudo pacman -Syu
sudo pacman -Sc

echo ""
echo "*** Updating Yay now"
echo ""

sleep 3

yay -Syu # Don't run as 'sudo'. It can cause perma damage

echo ""
echo "*** Updating Flatpak now"
echo ""

sleep 3

flatpak update
flatpak repair

echo ""
echo "***Updating LocateDB now"
echo ""

sudo updatedb

echo ""
echo "***Updating Firmwares now"
echo ""

sudo fwupd

echo ""
echo "-------"
echo ""
echo "You're set. But better not to linger here though, eh?"
echo ""