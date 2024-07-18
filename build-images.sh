#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.129/Dockerfile -t hubci/hugo:0.129.0 -t hubci/hugo:0.129 --platform linux/amd64 .
