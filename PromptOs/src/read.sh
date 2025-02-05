#!/bin/bash

read_file () {
	local path="${1:5}"
	cd "./SYS/home"
	cat "$path"
	cd ../..
}
