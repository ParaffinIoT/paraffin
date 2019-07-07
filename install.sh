#!/bin/bash

# exit when any command fails
set -e

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT


echo "Paraffin IoT Platform is running..."
echo ">"

file_paraffin="./paraffin"
file_broker="./broker.env"
file_apiserver="./apiserver.env"

file_apiserver="./apiserver.env"

if [ -f "$file_paraffin" ]
then
	echo "" && echo "$file_paraffin  is exist."
  exit 1
else
	sudo git clone https://github.com/ParaffinIoT/paraffin	
fi

if [ -f "$file_broker" ]
then
	echo "" && echo "$file_broker found."
  mv ./paraffin/broker.env ./paraffin/broker.env
else
	echo "" && echo "$file_broker not found." && echo ">"
	echo "Default .env is loading."
	mv ./paraffin/broker.sample ./paraffin/broker.env
fi

if [ -f "$file_apiserver" ]
then
	echo "" && echo "$file_apiserver found."
  mv ./paraffin/apiserver.env ./paraffin/apiserver.env
else
	echo "" && echo "$file_apiserver not found."
	echo "Default .env is loading."
	mv ./paraffin/apiserver.sample ./paraffin/apiserver.env
fi

cd paraffin
echo "" && echo "Docker goes to deploy Paraffin services..."
sudo docker-compose up
