#!/bin/bash

list_files() {
	cd './SYS/home/'
	local data=("$1")
	local _all=""
	local files=(*)
	local count=0
	for param in "${data[@]}"; do
		if [ "$param" == "-a" ]; then
			_all="-h"
		fi
	done

	for file in "${files[@]}"; do
		echo -n "$file "
		count=$((count + 1));
		if [ "$count" == "3" ]; then
			count=0
			echo ""
		fi
	done
	echo ""
	cd ../..
}
