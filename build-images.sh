#!/usr/bin/env bash

docker build --file 0.71/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.71.0  -t cibuilds/hugo:0.71 .
