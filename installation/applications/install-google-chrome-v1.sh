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


# donwloading and installing google chrome for netflix e.g.

$REPO_PACKAGE="google-chrome-stable"
$FILE_PACKAGE="$FILE_PACKAGE"


if [[ ! -z `dpkg --get-selections $REPO_PACKAGE | grep install` ]]; then
    echo "$REPO_PACKAGE already installed.";
    exit;
fi

rm /tmp/$FILE_PACKAGE

echo "downloading google chrome latest stable edition"
wget https://dl.google.com/linux/direct/$FILE_PACKAGE -O /tmp/$FILE_PACKAGE
sudo dpkg -i /tmp/$FILE_PACKAGE

rm /tmp/$FILE_PACKAGE

echo "################################################################"
echo "###################    google chrome installed #################"
echo "################################################################"
