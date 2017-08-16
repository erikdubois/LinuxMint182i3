#!/bin/bash 
set -e
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

echo "###############################"
echo "Xcb-util-xrm"
echo "###############################"

if [ -f "/usr/include/xcb/xcb_xrm.h" ]; then
    echo "It seems \"Xcb-util-xrm\" is installed already. Skipping reinstallation."
    exit
fi

# dependancy on xcb-util-xrm

rm -rf /tmp/xcb-util-xrm
git clone --recursive https://github.com/Airblader/xcb-util-xrm.git /tmp/xcb-util-xrm
cd /tmp/xcb-util-xrm
git submodule update --init
bash /tmp/xcb-util-xrm/autogen.sh --prefix=/usr
make && sudo make install

rm -rf /tmp/xcb-util-xrm

echo
echo
echo "###############################"
echo "Xcb-util-xrm installed"
echo "###############################"
sleep 3
