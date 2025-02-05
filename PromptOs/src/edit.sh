#!/bin/bash

edit_file() {
	cd ./SYS/home/
	local path="${1:5}"
	nano $path
	cd ../..
}
