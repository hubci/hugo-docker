#!/usr/bin/env bash

docker build --file 0.48/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.48 .
