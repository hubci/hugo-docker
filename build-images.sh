#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.154/Dockerfile -t hubci/hugo:0.154.1 -t hubci/hugo:0.154 --platform linux/amd64 .
