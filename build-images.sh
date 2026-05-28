#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.162/Dockerfile -t hubci/hugo:0.162.1 -t hubci/hugo:0.162 --platform linux/amd64 .
