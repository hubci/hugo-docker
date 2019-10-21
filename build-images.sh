#!/usr/bin/env bash

docker build --file 0.59/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.59.0  -t cibuilds/hugo:0.59 .
