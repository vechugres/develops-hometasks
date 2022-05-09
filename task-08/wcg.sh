#!/bin/bash
docker build -t multi -f Dockerfile.multi .
docker run -d -p 8889:8888 --name wcg multi
