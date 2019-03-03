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


# Downloading and installing latest variety

THE_PPA="peterlevi/ppa"

if [[ -z `grep -R "$THE_PPA" /etc/apt/` ]]; then
    sudo add-apt-repository -y ppa:$THE_PPA
    sudo apt-get update
fi

sudo apt-get install variety -y



echo "################################################################"
echo "###################    variety installed   #####################"
echo "################################################################"
