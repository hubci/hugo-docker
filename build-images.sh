#!/usr/bin/env bash

docker build --file 0.95/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.95.0  -t cibuilds/hugo:0.95 .


docker build --file 0.95/Dockerfile -t hubci/hugo:latest -t hubci/hugo:0.95.0  -t hubci/hugo:0.95 .
