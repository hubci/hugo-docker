#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.147/Dockerfile -t hubci/hugo:0.147.7 -t hubci/hugo:0.147 --platform linux/amd64 .
