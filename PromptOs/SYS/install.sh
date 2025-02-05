#!/bin/bash
clear;

user=""

while [ "$user" == "" ]; do
	read -e -p "Install and define user data : " user
done

userdata="user='$user'
ruser='$USER'
osver='1.0'"

echo -e "$userdata" > data.sh

apt update && apt upgrade -y
apt install git wget nodejs -y

bash system.sh
