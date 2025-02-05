#!/bin/bash

make_directory () {
	local path="$1"
	local fpath="${path:3}"
	cd "./SYS/home"
	mkdir $fpath
	cd ../..
}
