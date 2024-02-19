#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.123/Dockerfile -t hubci/hugo:0.123.0 -t hubci/hugo:0.123 --platform linux/amd64 .
