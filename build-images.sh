#!/usr/bin/env bash

docker build --file 0.74/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.74.1  -t cibuilds/hugo:0.74 .


docker build --file 0.74/Dockerfile -t hubci/hugo:latest -t hubci/hugo:0.74.1  -t hubci/hugo:0.74 .
