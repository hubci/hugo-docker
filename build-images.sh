#!/usr/bin/env bash

docker build --file 0.35/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.35 .
docker build --file 0.35/Dockerfile -t felicianotech/docker-hugo:latest -t felicianotech/docker-hugo:0.35 .
