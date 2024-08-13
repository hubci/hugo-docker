#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.132/Dockerfile -t hubci/hugo:0.132.1 -t hubci/hugo:0.132 --platform linux/amd64 .
