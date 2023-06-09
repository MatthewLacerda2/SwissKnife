#!/bin/bash

sudo trash-empty

echo ""
echo "Updating..."
echo ""

sleep 1

sudo apt-get update

echo ""
echo "Upgrading..."
echo ""

sleep 2

sudo apt-get upgrade

echo ""
echo "Snap refreshing..."
echo ""

sudo snap refresh

echo ""
echo "Snap Refreshed!"
echo ""
echo "--------"
echo ""
echo "You're all set. Better not to linger here, alright?"
echo ""