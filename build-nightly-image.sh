#!/usr/bin/env bash

docker build --file nightly/Dockerfile -t cibuilds/hugo:nightly .
docker build --file nightly/Dockerfile -t hubci/hugo:nightly .
