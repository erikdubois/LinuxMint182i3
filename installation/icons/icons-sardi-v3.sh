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

ICON_PACKAGE="sardi"
ICON_FOLDER_TO_CHECK="Sardi"

# cleaning tmp
[ -d /tmp/$ICON_PACKAGE ] && rm -rf /tmp/$ICON_PACKAGE

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

if [ -d $HOME"/.icons/$ICON_FOLDER_TO_CHECK" ]; then
    echo "It seems \"$ICON_PACKAGE\" is installed already. Skipping reinstallation."
    exit
fi

wget -O /tmp/$ICON_PACKAGE.tar.gz "https://sourceforge.net/projects/sardi/files/latest/download?source=files"
mkdir /tmp/$ICON_PACKAGE
tar -zxf /tmp/$ICON_PACKAGE.tar.gz -C /tmp/$ICON_PACKAGE
rm /tmp/$ICON_PACKAGE.tar.gz
cp -rf /tmp/$ICON_PACKAGE/* ~/.icons/

# cleaning tmp
[ -d /tmp/$ICON_PACKAGE ] && rm -rf /tmp/$ICON_PACKAGE



echo "################################################################"
echo "###################    icons $ICON_PACKAGE done   ######################"
echo "################################################################"
