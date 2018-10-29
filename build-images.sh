#!/usr/bin/env bash

docker build --file 0.50/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.50.0  -t cibuilds/hugo:0.50 .
