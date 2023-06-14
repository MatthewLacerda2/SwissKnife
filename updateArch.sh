#!/bin/bash

echo ""
echo "Updating Pacman now"
echo ""

sleep 1

sudo pacman -Syu

echo ""
echo "---Updating Yay now---"
echo ""

sleep 3

yay -Syu #dont run as 'sudo' as it can cause perma damage

echo ""
echo "Updating Flatpak..."
echo ""

sleep 3

flatpak update
flatpak repair

echo ""
echo "-------"
echo ""
echo "You're all set. Better not to linger here, alright?"
echo ""
