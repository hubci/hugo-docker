#!/usr/bin/env bash

docker build --file 0.49/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.49.1  -t cibuilds/hugo:0.49 .
