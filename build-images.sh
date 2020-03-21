#!/usr/bin/env bash

docker build --file 0.68/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.68.0  -t cibuilds/hugo:0.68 .
