# !/bin/bash

# Remove running containers
docker rm -f $(docker ps -aq)

# Build images
docker build -t trio-task-mysql:5.7 db
docker build -t trio-task-flask-app:latest flask-app

# Run flask-app
docker run -d \
    --name flask-app \
    flask-app:latest

# show running containers
echo
docker ps -a
                                                                                                                           36,1          Bot