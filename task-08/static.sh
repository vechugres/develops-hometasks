#!/bin/bash
docker run -d -p 8081:80 --name static hometask-image
docker cp index.html static:/var/www/html
