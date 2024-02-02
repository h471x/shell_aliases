#! /usr/bin/bash

clear && echo -e;
sudo clear;
cat ./.backup/user/$(basename $SHELL)rc_backup[$USER].txt > ~/.$(basename $SHELL)rc;
sudo cat ./.backup/root/$(basename $SHELL)rc_backup[root].txt > /root/.$(basename $SHELL)rc;
source ~/.(basename $SHELL)rc
sudo source /root/.(basename $SHELL)rc
cat .backup/.src/install.sh > install.sh
