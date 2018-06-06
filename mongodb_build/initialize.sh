#!/bin/bash
# Refering https://github.com/frodenas/docker-mongodb, Apache 2.0 license

echo "Initializing MongoDB (mobilecoach)"

/usr/bin/mongod &
while ! nc -vz localhost 27017; do sleep 1; done

echo "Creating database and user"
mongo mc --eval "db.createUser({ user: 'mc', pwd: 'mc', roles: [ { role: 'readWrite', db: 'mc' } ] });"

echo "Shutting down MongoDB"
/usr/bin/mongod --shutdown

echo "intitialized." > /docker_mongodb_initialized