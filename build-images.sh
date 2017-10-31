#!/usr/bin/env bash

docker build --file 0.30/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.30.2  -t cibuilds/hugo:0.30 .
docker build --file 0.30/Dockerfile -t felicianotech/docker-hugo:latest -t felicianotech/docker-hugo:0.30.2  -t felicianotech/docker-hugo:0.30 .
