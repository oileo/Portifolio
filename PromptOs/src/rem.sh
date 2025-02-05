#!/bin/bash

remove_path (){
	local entry="$1"
	local path="${entry:4}"
	cd "./SYS/home/"
	rm -r -f $path
	cd ../..
}
