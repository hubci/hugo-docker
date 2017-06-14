<img src="https://cdn.rawgit.com/felicianotech/docker-hugo/3e063d81/img/logo.svg" alt="Docker Hugo Logo" title="Docker Hugo" width="100%" height="80" />

# Docker Hugo [![Build Status](https://circleci.com/gh/felicianotech/docker-hugo.svg?style=shield)](https://circleci.com/gh/felicianotech/docker-hugo) [![Docker Repository](https://img.shields.io/badge/Docker%20Repository-Docker%20Hub-blue.svg)](https://hub.docker.com/r/felicianotech/docker-hugo/) [![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/felicianotech/docker-hugo/master/LICENSE)

A Docker image for [Hugo](http://gohugo.io/), a static-site generator. Includes [HTMLProofer](https://github.com/gjtorikian/html-proofer) for testing. Hosted on [Docker Hub](https://hub.docker.com/r/felicianotech/docker-hugo/).

Currently, this Docker image is designed to be used as a base image on CircleCI 2.0 for building, testing, and deploying Hugo based websites.

I plan to make this image useful for local testing and build/test/deploy on Travis CI as well in the future.

## Using on CircleCI

Using this image to build your Hugo generated website on CircleCI 2.0 can be as simple as using the following configuration in `.circleci/config.yml`:

```
version: 2
jobs:
  build:
    docker:
      - image: felicianotech/docker-hugo:0.22.1
    working_directory: ~/project
    steps:
      - checkout
      - run:
          name: "Run Hugo"
          command: HUGO_ENV=production hugo -v -s src/
      - run:
          name: "Test Website"
          command: htmlproofer src/public --allow-hash-href --check-html --empty-alt-ignore --disable-external
```

In this example, we assume the Hugo files are in a directory called `src` in the repo.

## Building The Images

To prepare new images, I run `./gen-dockerfiles.sh` locally, passing it the current Hugo versions that I am "supporting". For example, for the initial release, I ran `./gen-dockerfiles.sh 0.18.1 0.19`.

I then commit the resulting files and push up to GitHub. CircleCI builds everything and publishes the new Docker images to Docker Hub.

## Websites Using This & Examples

The following sites use Hugo and this image (and some have their config public):

- <https://Feliciano.Tech> ([config](https://github.com/felicianotech/feliciano.tech/blob/master/.circleci/config.yml))
- <https://ElectSanchez.com>

## Feedback & Contributing

Please feel free to open GitHub Issues for any questions, bugs, request, etc. You can also write a new post on [Hugo's forum](https://discuss.gohugo.io/) and ping me, `FelicianoTech`. Pull Request welcome as well.
