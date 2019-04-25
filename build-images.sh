#!/usr/bin/env bash

docker build --file 0.55/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.55.4  -t cibuilds/hugo:0.55 .
