#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.115/Dockerfile -t hubci/hugo:0.115.2 -t hubci/hugo:0.115 --platform linux/amd64 .
