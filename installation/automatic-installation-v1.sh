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

echo "Let us install i3"

bash 100-install-dependencies-v1.sh
bash 110-install-xcb-util-xrm-v1.sh
bash 120-install-i3-gaps-next-v1.sh

bash 300-install-extra-software-v1.sh

bash 400-install-fonts-v1.sh

bash 410-install-icons-v1.sh

bash 420-install-themes-v1.sh

bash 430-install-applications-v1.sh

bash 600-copy-personal-settings.sh


bash 900-copy-i3-files-to-config-i3-folder-v2.sh

echo "###################################################"
echo "##############     Auto script terminated     #################"
echo "###################################################"

