#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.125/Dockerfile -t hubci/hugo:0.125.5 -t hubci/hugo:0.125 --platform linux/amd64 .
