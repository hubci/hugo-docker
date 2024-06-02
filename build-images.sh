#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.126/Dockerfile -t hubci/hugo:0.126.3 -t hubci/hugo:0.126 --platform linux/amd64 .
