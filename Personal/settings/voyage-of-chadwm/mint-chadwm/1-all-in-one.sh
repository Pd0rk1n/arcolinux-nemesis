#!/bin/bash
# set -e
##################################################################################################################################
# Author    : Erik Dubois
# Website   : https://www.erikdubois.be
# Youtube   : https://youtube.com/erikdubois
##################################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################################

if [ "$DEBUG" = true ]; then
    echo
    echo "------------------------------------------------------------"
    echo "Running $(basename $0)"
    echo "------------------------------------------------------------"
    echo
    echo "Debug mode is on. Press Enter to continue..."
    read dummy
    echo
fi

##################################################################################################################################

echo
tput setaf 2
echo "########################################################################"
echo "################### All in one for Mint"
echo "########################################################################"
tput sgr0
echo

sudo apt update -y
sudo apt upgrade -y

./install-chadwm.sh
./install-apps-install.sh
./install-apps-local.sh
./install-apps-ppa.sh
./install-apps-snap.sh
# personal stuff
./install-ckb-next.sh
./install-design.sh
./personal-configs.sh

sudo apt autoremove -y

echo
tput setaf 6
echo "########################################################################"
echo "###### All in one done"
echo "########################################################################"
tput sgr0
echo
