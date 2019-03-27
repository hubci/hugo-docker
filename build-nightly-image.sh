#!/usr/bin/env bash

docker build --file nightly/Dockerfile -t cibuilds/hugo:nightly .
