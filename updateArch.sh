#!/bin/bash

echo ""
echo "Updating Pacman..."
echo ""

sleep 1

sudo pacman -Syu

echo ""
echo "Updating Yay..."
echo ""

sleep 2

yay -Syu #doesnt run as 'sudo' as it can cause perma damage

echo ""
echo "-------"
echo ""
echo "You're all set. Better not to linger here, alright?"
echo ""
