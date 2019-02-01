#!/usr/bin/env bash

docker build --file 0.54/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.54.0  -t cibuilds/hugo:0.54 .
