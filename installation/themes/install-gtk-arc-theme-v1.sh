#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#https://github.com/horst3180/$THEME_PACKAGE

THEME_PACKAGE="arc-theme"

if [ -d "/usr/share/themes/Arc" ]; then
    echo "It seems \"$THEME_PACKAGE\" is installed already. Skipping reinstallation."
    exit
fi

rm -rf /tmp/$THEME_PACKAGE

sudo apt-get install build-essential autoconf automake pkg-config libgtk-3-0 libgtk-3-dev -y
sudo apt-get -f install
git clone https://github.com/horst3180/$THEME_PACKAGE --depth 1 /tmp/$THEME_PACKAGE
cd /tmp/$THEME_PACKAGE
sh autogen.sh --prefix=/usr
sudo make install

rm -rf /tmp/$THEME_PACKAGE

# sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}


echo "################################################################"
echo "###################    arc theme installed #####################"
echo "################################################################"
