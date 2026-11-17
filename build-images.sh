#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.169/Dockerfile -t hubci/hugo:0.169.0 -t hubci/hugo:0.169 --platform linux/amd64 .
