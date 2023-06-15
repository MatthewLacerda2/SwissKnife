#!/bin/bash

echo ""
echo "*** Updating Pacman now"
echo ""

sleep 1

sudo pacman -Syu

echo ""
echo "*** Updating Yay now"
echo ""

sleep 3

yay -Syu #dont run as 'sudo' as it can cause perma damage

echo ""
echo "*** Updating Flatpak now"
echo ""

sleep 3

flatpak update
flatpak repair

echo ""
echo "-------"
echo ""
echo "You're set. But better not to linger here though, eh?"
echo ""
