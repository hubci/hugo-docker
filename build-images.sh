#!/usr/bin/env bash

docker build --file 0.64/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.64.2  -t cibuilds/hugo:0.64 .
