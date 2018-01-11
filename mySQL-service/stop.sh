#!/bin/sh

# Stop the db and remove the container.
docker stop myDB && docker rm myDB
