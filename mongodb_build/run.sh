#!/bin/bash
# Refering https://github.com/frodenas/docker-mongodb, Apache 2.0 license

if [ ! -f "/docker_mongodb_initialized" ]
then
	initialize.sh    
fi

docker-entrypoint.sh mongod