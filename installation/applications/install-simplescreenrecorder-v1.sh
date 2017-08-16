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

THE_PPA="maarten-baert/simplescreenrecorder"

if [[ -z `grep -R "$THE_PPA" /etc/apt/` ]]; then
    sudo add-apt-repository -y ppa:$THE_PPA
    sudo apt-get update
fi

sudo apt-get install -y simplescreenrecorder

echo "################################################################"
echo "############## simplescreenrecorder installed    ###############"
echo "################################################################"
