#!/usr/bin/env bash

docker build --file 0.61/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.61.0  -t cibuilds/hugo:0.61 .
