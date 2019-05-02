#!/usr/bin/env bash

docker build --file 0.55/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.55.5  -t cibuilds/hugo:0.55 .
