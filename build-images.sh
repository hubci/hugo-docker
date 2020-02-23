#!/usr/bin/env bash

docker build --file 0.65/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.65.3  -t cibuilds/hugo:0.65 .
