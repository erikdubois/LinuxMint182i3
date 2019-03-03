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

OPT_NAME="screenkey"
INSTALL_DIR="/opt/screenkey"


if [ -d "$INSTALL_DIR" ]; then
    echo "It seems, that \"$OPT_NAME\" already installed. Skipping reinstallation.";
    exit;
fi

sudo rm -rf $INSTALL_DIR
sudo apt-get install python-gtk2 python-setuptools python-setuptools-git python-distutils-extra -y
sudo git clone https://github.com/wavexx/screenkey.git $INSTALL_DIR
cd $INSTALL_DIR
sudo ./setup.py install

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
