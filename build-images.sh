#!/usr/bin/env bash

docker build --file 0.58/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.58.2  -t cibuilds/hugo:0.58 .
