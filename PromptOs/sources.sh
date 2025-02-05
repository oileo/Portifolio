#!/bin/bash

files=("./src/"*)

for file in "${files[@]}"; do
	source "$file"
done
