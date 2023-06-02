#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.112/Dockerfile -t hubci/hugo:0.112.7 -t hubci/hugo:0.112 --platform linux/amd64 .
