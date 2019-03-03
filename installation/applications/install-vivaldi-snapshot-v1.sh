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


REPO="deb http://repo.vivaldi.com/archive/deb/ stable main"

if [[ -z `grep -R "$REPO" /etc/apt/` ]]; then
    sudo add-apt-repository "$REPO"
    wget -qO- http://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
    sudo apt update
fi

sudo apt install vivaldi-snapshot


##################################################################################################################

echo "################################################################"
echo "###################     vivaldi installed    ###################"
echo "################################################################"


