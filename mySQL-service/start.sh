#!/bin/sh

echo "Starting MYSQL DB Container..."

# Run the MYSQL DB container with the DB name 'users' and credentials
# of a user_service user.  Docker image is the latest mysql from Docker Hub. 

docker run --name myDB -d \
  -e MYSQL_ROOT_PASSWORD=abc123 \
  -e MYSQL_DATABASE=users \
  -e MYSQL_USER=users_service \
  -e MYSQL_PASSWORD=123 \
  -p 3306:3306 \
  mysql:latest

# Wait for the database service to start up
echo "Waiting for the DB to start up ..."

docker exec myDB mysqladmin --silent --wait=30 -uusers_service -p123 ping || exit 1

# Run the setup script
echo "Setting up initial data..."

docker exec -i myDB mysql -uusers_service -p123 users < setup.sql
