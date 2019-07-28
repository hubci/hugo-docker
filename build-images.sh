#!/usr/bin/env bash

docker build --file 0.56/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.56.1  -t cibuilds/hugo:0.56 .
