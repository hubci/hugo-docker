#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.116/Dockerfile -t hubci/hugo:0.116.1 -t hubci/hugo:0.116 --platform linux/amd64 .
