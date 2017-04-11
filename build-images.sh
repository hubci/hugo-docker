#!/usr/bin/env bash

docker build --file 0.20/Dockerfile -t felicianotech/docker-hugo:latest -t felicianotech/docker-hugo:0.20 .
docker build --file 0.19/Dockerfile -t felicianotech/docker-hugo:0.19 .
docker build --file 0.18/Dockerfile -t felicianotech/docker-hugo:0.18.1  -t felicianotech/docker-hugo:0.18 .
