#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.133/Dockerfile -t hubci/hugo:0.133.1 -t hubci/hugo:0.133 --platform linux/amd64 .
