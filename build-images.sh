#!/usr/bin/env bash

docker build --file 0.32/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.32.4  -t cibuilds/hugo:0.32 .
docker build --file 0.31/Dockerfile -t cibuilds/hugo:0.31.1  -t cibuilds/hugo:0.31 .
docker build --file 0.30/Dockerfile -t cibuilds/hugo:0.30.2  -t cibuilds/hugo:0.30 .
docker build --file 0.32/Dockerfile -t felicianotech/docker-hugo:latest -t felicianotech/docker-hugo:0.32.4  -t felicianotech/docker-hugo:0.32 .
docker build --file 0.31/Dockerfile -t felicianotech/docker-hugo:0.31.1  -t felicianotech/docker-hugo:0.31 .
docker build --file 0.30/Dockerfile -t felicianotech/docker-hugo:0.30.2  -t felicianotech/docker-hugo:0.30 .
