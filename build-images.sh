#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.136/Dockerfile -t hubci/hugo:0.136.5 -t hubci/hugo:0.136 --platform linux/amd64 .
