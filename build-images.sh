#!/usr/bin/env bash

docker build --file 0.56/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.56.2  -t cibuilds/hugo:0.56 .
