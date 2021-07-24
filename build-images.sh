#!/usr/bin/env bash

docker build --file 0.84/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.84.1  -t cibuilds/hugo:0.84 .


docker build --file 0.84/Dockerfile -t hubci/hugo:latest -t hubci/hugo:0.84.1  -t hubci/hugo:0.84 .
