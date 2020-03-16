#!/usr/bin/env bash

docker build --file 0.67/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.67.1  -t cibuilds/hugo:0.67 .
