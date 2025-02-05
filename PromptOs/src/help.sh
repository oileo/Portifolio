#!/bin/bash

show_help() {
	cd "./src/"
	local commands=(*.sh)
	cd ..
	for file in "${commands[@]}"; do
		echo "$file"
	done
}
