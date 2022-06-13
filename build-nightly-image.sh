#!/usr/bin/env bash

docker build --build-arg HUGO_VER=$(sonar tags head --method=semver hubci/hugo) --file nightly/Dockerfile -t hubci/hugo:nightly .
