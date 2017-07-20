#!/bin/bash
set -e
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

sh applications/install-sublime-text-v1.sh

sh applications/install-spotify-v2.sh

sh applications/install-variety-v1.sh

sudo apt install -y firefox gimp inkscape meld vlc evolution


echo "#########################################################"
echo "Applications have been  installed"
echo "#########################################################"
sleep 1
