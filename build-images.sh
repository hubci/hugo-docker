#!/usr/bin/env bash

docker build --file 0.66/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.66.0  -t cibuilds/hugo:0.66 .
