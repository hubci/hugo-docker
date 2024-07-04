#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.128/Dockerfile -t hubci/hugo:0.128.2 -t hubci/hugo:0.128 --platform linux/amd64 .
