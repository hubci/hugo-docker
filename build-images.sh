#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.152/Dockerfile -t hubci/hugo:edge --platform linux/amd64 .
