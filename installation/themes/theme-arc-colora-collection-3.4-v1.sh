#!/bin/bash
#
#
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.
# MMm----::-://////////////oymNMd+`
# MMd      /++                -sNMd:
# MMNso/`  dMM    `.::-. .-::.` .hMN:
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM
#     NMm  dMM  -MMm  `MMM   dMM. dMM
#     NMm  dMM  -MMm  `MMM   dMM. dMM
#     NMm  dMM  .mmd  `mmm   yMM. dMM
#     NMm  dMM`  ..`   ...   ydm. dMM
#     hMM- +MMd/-------...-:sdds  dMM
#     -NMm- :hNMNNNmdddddddddy/`  dMM
#      -dMNs-``-::::-------.``    dMM
#       `/dMNmy+/:-------------:/yMMM
#          ./ydNMMMMMMMMMMMMMMMMMMMMM
#             \.MMMMMMMMMMMMMMMMMMM
#
#
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
#
# More from Erik Dubois
#
# Aurora Conky
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at
# http://erikdubois.be/category/linux/aurora-conky/
#
# Aureola Conky
# Collections of nice conky's with lua syntax
# https://github.com/erikdubois/Aureola
#
# Sardi icons
# Many different styles of icons from colourfull, monochrome, white, circle
# https://sourceforge.net/projects/sardi/
#
# Super Ultra Flat Numix Remix
# Colourfull and playfull icons
# https://github.com/erikdubois/Super-Ultra-Flat-Numix-Remix
#
# Check out the github - many more scripts for automatic installation of Linux Systems.
#
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

THEME_PACKAGE="Arc-Theme-Colora-Collection"
THEME_FOLDER_TO_CHECK="Arc-Casablanca"

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
rm -rf /tmp/$THEME_PACKAGE


echo "################################################################"
echo "################## arc colora themes installed   ###############"
echo "################################################################"
