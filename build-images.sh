#!/usr/bin/env bash

docker build --file 0.55/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.55.1  -t cibuilds/hugo:0.55 .
