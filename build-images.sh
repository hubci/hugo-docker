#!/usr/bin/env bash

docker build --file 0.34/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.34 .
docker build --file 0.34/Dockerfile -t felicianotech/docker-hugo:latest -t felicianotech/docker-hugo:0.34 .
