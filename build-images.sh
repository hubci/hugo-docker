#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.153/Dockerfile -t hubci/hugo:0.153.2 -t hubci/hugo:0.153 --platform linux/amd64 .
