#!/bin/bash

make_file () {
	local entry="$1";
	local path="${entry:3}"
	cd './SYS/home'
	local _force="false"
	local array=("$path");

	for params in "${array[@]}"; do
		if [ "$params" == "-f" ]; then
			_force="true";
		fi;
	done
	
	if [[ -e "$path" ]]; then
		if [ "$_force" == "true" ]; then
			touch $path
		else
			echo "This file exist!"
		fi;
	else
		touch $path
	fi;

	cd ../..
}
