#! /usr/bin/bash

#Variables that we will use
shell="$(basename $SHELL)"
user_shell="~/.$shellrc"
root_shell="/root/.$shellrc"
user_src="./files/user/user_aliases.txt"
root_src="./files/root/root_aliases.txt"
user_backup="./backup/shell_config[$USER]"
root_backup="./backup/shell_config[root]"

#Some useful functions to make the code readable
# function c() {
# 	clear
# }
#
# function br() {
# 	echo -e
# }
#
# function load() {
# 	cat "$1" >>"$2"
# }
#
# function reload() {
# 	source "$1"
# }
#
# function save() {
# 	cat "$1" >"$2"
# }
#
# function delete() {
# 	rm -rf "$1"
# }
#
# function sudo_check() {
# 	sudo -n true 2>/dev/null
# }

# function check(){ if [ -n $android ]; then eval "$@"; fi}
# function ask(){}

#The basic operations
c && br

#Root shell
if sudo_check; then
	echo "Nice we have sudo"
else
	echo "Are you rooted little android ?"
	#A trick to have super user permission
	#with all the following commands
	# sudo clear;
	#
	# save $root_shell $root_backup
	# load $root_src $root_shell
	# reload $root_shell
fi

#User shell
# save $user_shell $user_backup
# load $user_src $user_shell
# reload $user_shell

#Remove the installation file
# delete install.sh
