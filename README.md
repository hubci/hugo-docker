# Hugo Docker Image [![Build Status](https://circleci.com/gh/felicianotech/docker-hugo.svg?style=shield)](https://circleci.com/gh/felicianotech/docker-hugo) [![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/felicianotech/docker-hugo/master/LICENSE)

Docker image for Hugo, the static-site generator. Includes HTMLProofer for testing.

Currently, this image is designed to be used on CircleCI 2.0 for building, testing, and deploying Hugo based websites.

I plan to make this image useful for local testing and build/test/deploy on Travis CI as well in the near future.

## How It Works

To prepare new images, I run `./gen-dockerfiles.sh` locally, passing it the current Hugo versions that I am "supporting". For example, for the initial release, I ran `./gen-dockerfiles.sh 0.18.1 0.19`.

I then commit the resulting files and push up to GitHub. CircleCI builds everything and publishes the new Docker images on Docker Hub.
