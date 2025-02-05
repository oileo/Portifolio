#!/bin/bash

execute_file() {
	cd ./SYS/home

	local path="${1:5}"
	bash "$path"
	
	cd ../..
}
