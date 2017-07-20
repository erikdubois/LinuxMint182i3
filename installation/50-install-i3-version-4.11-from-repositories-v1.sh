#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################



########################################
########        C O R E        #########
########################################

#This will install i3 version 4.11
#If you are planning to install the latest version there is no need to run this

#Core stuff i3
sudo apt-get install -y i3 i3lock i3status i3-wm 
sudo apt-get install -y dmenu
#you will install suckless-tools instead - that is just fine


# create hidden i3 folder

# if there is no hidden folder then make one
[ -d $HOME"/.config/i3" ] || mkdir -p $HOME"/.config/i3"

echo
echo
echo "#################################################"
echo "i3 older version from repositories installed"
echo "#################################################"
sleep 1


