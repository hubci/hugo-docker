#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.168/Dockerfile -t hubci/hugo:0.168.0 -t hubci/hugo:0.168 --platform linux/amd64 .
