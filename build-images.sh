#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.151/Dockerfile -t hubci/hugo:0.151.2 -t hubci/hugo:0.151 --platform linux/amd64 .
