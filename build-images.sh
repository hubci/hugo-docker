#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.163/Dockerfile -t hubci/hugo:0.163.2 -t hubci/hugo:0.163 --platform linux/amd64 .
