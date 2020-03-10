#!/usr/bin/env bash

docker build --file 0.67/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.67.0  -t cibuilds/hugo:0.67 .
