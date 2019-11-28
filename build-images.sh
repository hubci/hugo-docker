#!/usr/bin/env bash

docker build --file 0.60/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.60.0  -t cibuilds/hugo:0.60 .
