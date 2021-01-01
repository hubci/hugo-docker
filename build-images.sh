#!/usr/bin/env bash

docker build --file 0.80/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.80.0  -t cibuilds/hugo:0.80 .


docker build --file 0.80/Dockerfile -t hubci/hugo:latest -t hubci/hugo:0.80.0  -t hubci/hugo:0.80 .
