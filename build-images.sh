#!/usr/bin/env bash

docker build --file 0.89/Dockerfile -t cibuilds/hugo:latest -t cibuilds/hugo:0.89.4  -t cibuilds/hugo:0.89 .


docker build --file 0.89/Dockerfile -t hubci/hugo:latest -t hubci/hugo:0.89.4  -t hubci/hugo:0.89 .
