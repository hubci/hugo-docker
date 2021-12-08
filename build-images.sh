#!/usr/bin/env bash

docker build --file 0.90/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.90.0  -t cibuilds/hugo:0.90 .


docker build --file 0.90/Dockerfile -t hubci/hugo:latest -t hubci/hugo:0.90.0  -t hubci/hugo:0.90 .
