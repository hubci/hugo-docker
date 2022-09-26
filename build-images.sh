#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes

docker build --file 0.104/Dockerfile -t hubci/hugo:0.104.1  -t hubci/hugo:0.104 .
