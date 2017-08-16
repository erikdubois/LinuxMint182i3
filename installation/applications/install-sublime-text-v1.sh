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

REPO_PACKAGE="sublime-text"
FILE_PACKAGE="sublime-text_build-3126_amd64.deb"


if [[ ! -z `dpkg --get-selections $REPO_PACKAGE | grep install` ]]; then
    echo "package \"$REPO_PACKAGE\" already installed.";
    exit;
fi

rm /tmp/$FILE_PACKAGE

wget https://download.sublimetext.com/$FILE_PACKAGE -O /tmp/$FILE_PACKAGE
sudo dpkg -i /tmp/$FILE_PACKAGE

rm /tmp/$FILE_PACKAGE


##################################################################################################################

echo "################################################################"
echo "################      sublime text installed    ################"
echo "################################################################"


