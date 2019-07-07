#!/bin/bash

# exit when any command fails
set -e

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

Normal='\e[0m'
Green='\e[32m'
Red='\e[91m'
LightGreeen='\e[92m'
LightYellow='\e[93m'

echo -e "> \e[92m Paraffin IoT Platform is running..." && echo ''


file_paraffin="./paraffin"
file_broker="./broker.env"
file_apiserver="./apiserver.env"


if [ -f "$file_paraffin" ]
then
	echo "" && echo -e "${LightGreen}$file_paraffin  is exist."
  exit 1
else
	sudo git clone https://github.com/ParaffinIoT/paraffin	
fi

if [ -f "$file_broker" ]
then
	echo "" && echo "$file_broker found."
	mv ./broker.env ./paraffin/broker.env
else
	echo "" && echo -e "${LightYellow}$file_broker not found." && echo -e "${Normal}"
	echo "Default broker.env is loading."
fi

if [ -f "$file_apiserver" ]
then
	echo "" && echo "$file_apiserver found."
  	mv ./apiserver.env ./paraffin/apiserver.env
else
	echo "" && echo -e "${LightYellow}$file_apiserver not found." && echo -e "${Normal}"
	echo "Default apiserver.env is loading."
fi

cd ./paraffin
echo "" && echo -e "> ${LightGreen} Docker goes to deploy Paraffin services..." && echo -e "${Normal}>..."
sudo docker-compose up
