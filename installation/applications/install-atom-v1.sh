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

# will not install to error....????

REPO_PACKAGE="atom"
FILE_PACKAGE="atom-amd64.deb"


if [[ ! -z `dpkg --get-selections $REPO_PACKAGE | grep install` ]]; then
    echo "package \"$REPO_PACKAGE\" already installed.";
    exit;
fi

rm /tmp/$FILE_PACKAGE

wget https://atom.io/download/deb -O /tmp/$FILE_PACKAGE
#curl -o /tmp/code_1.5.3-1474533365_amd64.deb https://code.visualstudio.com/docs/?dv=linux64_deb
sudo dpkg -i /tmp/$FILE_PACKAGE
#gdebi /tmp/code_1.5.3-1474533365_amd64.deb


rm /tmp/$FILE_PACKAGE


##################################################################################################################

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"


