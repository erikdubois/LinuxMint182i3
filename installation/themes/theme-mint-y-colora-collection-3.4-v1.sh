#!/bin/bash
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

THEME_PACKAGE="Mint-Y-Colora-Theme-Collection"
THEME_FOLDER_TO_CHECK="Mint-Y-Casablanca"

if [ -d $HOME"/.themes/$THEME_FOLDER_TO_CHECK" ]; then
    echo "It seems \"$THEME_PACKAGE\" is installed already. Skipping reinstallation."
    exit
fi

# if there is no hidden folder then make one
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"

rm -rf /tmp/$THEME_PACKAGE
git clone https://github.com/erikdubois/$THEME_PACKAGE /tmp/$THEME_PACKAGE
find /tmp/$THEME_PACKAGE -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -r /tmp/$THEME_PACKAGE/Cinnamon\ 3.4/* ~/.themes/
# rm -rf /tmp/$THEME_PACKAGE



echo "################################################################"
echo "###############      mint-y-themes installed        ############"
echo "################################################################"
