#!/usr/bin/env bash
set -e #if error, stop everything
echo "building linux executable"
GOOS=linux go build
docker build -t lkhwa/docker-exercise-4 .
docker push lkhwa/docker-exercise-4
go clean