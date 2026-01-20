#!/bin/bash
echo "Deploying to environment: $1"
echo "Application version: $2"

docker run -d -p 8080:80 --name $1_app episode8-app:$2-$1
