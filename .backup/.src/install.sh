#! /usr/bin/bash

clear && echo -e;
sudo clear;
cat ~/.$(basename $SHELL)rc > ./.backup/user/$(basename $SHELL)rc_backup[$USER].txt;
sudo cat /root/.$(basename $SHELL)rc > ./.backup/root/$(basename $SHELL)rc_backup[root].txt;
cat ./files/user/user_aliases.txt >> ~/.$(basename $SHELL)rc;
sudo cat ./files/root/root_aliases.txt >> /root/.$(basename $SHELL)rc;
source ~/.(basename $SHELL)rc
sudo source /root/.(basename $SHELL)rc
sleep 1
rm -f install.sh
