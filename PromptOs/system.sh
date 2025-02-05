#!/bin/bash
clear;

source './sources.sh'

if [ -e "data.sh" ]; then
	source './data.sh'
	source './SYS/local.sh'
else
	bash "./SYS/install.sh"
	exit
fi;

verify_command() {
	local c="$1"
	local data=($c)
	case ${data[0]} in
		"exit") exit ;;
		"clear") clear ;;
		"list") list_files "$c" ;;
		"get") get "$c" ;;
		"md") make_directory "$c" ;;
		"rem") remove_path "$c" ;;
		"mk") make_file "$c" ;;
		"read") read_file "$c" ;;
		"nano") edit_file "$c" ;;
		"bash") execute_file "$c" ;;
		"help") show_help ;;
	esac;
}

echo -e -n "\e[36m"

while true; do
	read -e -p "$user " nome
	verify_command "$nome"
done;
