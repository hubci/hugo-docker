#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.149/Dockerfile -t hubci/hugo:0.149.1 -t hubci/hugo:0.149 --platform linux/amd64 .
