#!/usr/bin/env bash

docker build --file 0.42/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.42.1  -t cibuilds/hugo:0.42 .
docker build --file 0.42/Dockerfile -t felicianotech/docker-hugo:latest -t felicianotech/docker-hugo:0.42.1  -t felicianotech/docker-hugo:0.42 .
