# Hugo Docker Image [![Build Status](https://circleci.com/gh/felicianotech/docker-hugo.svg?style=shield)](https://circleci.com/gh/felicianotech/docker-hugo) [![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/felicianotech/docker-hugo/master/LICENSE)

Docker image for Hugo, the static-site generator. Includes HTMLProofer for testing. Hosted on [Docker Hub](https://hub.docker.com/r/felicianotech/docker-hugo/).

Currently, this image is designed to be used on CircleCI 2.0 for building, testing, and deploying Hugo based websites.

I plan to make this image useful for local testing and build/test/deploy on Travis CI as well in the future.

## Building The Images

To prepare new images, I run `./gen-dockerfiles.sh` locally, passing it the current Hugo versions that I am "supporting". For example, for the initial release, I ran `./gen-dockerfiles.sh 0.18.1 0.19`.

I then commit the resulting files and push up to GitHub. CircleCI builds everything and publishes the new Docker images on Docker Hub.

## Using on CircleCI

Using this image to build your Hugo generated website on CircleCI 2.0 is as simple as using the following configuration in `.circleci/config.yml`:

```
version: 2
jobs:
  build:
    docker:
      - image: felicianotech/docker-hugo:0.20.6
    working_directory: ~/project
    steps:
      - checkout
      - run:
          name: "Run Hugo"
          command: HUGO_ENV=production hugo -v -s ~/project/src/
      - run:
          name: "Test Website"
          command: htmlproofer ~/project/src/public --allow-hash-href --check-html --empty-alt-ignore --disable-external
```

In this example, we assume the Hugo files are in a directory called `src` in the repo.

## Websites Using This & Examples

The following sites use Hugo and this image (and some have their config public):

- <https://Feliciano.Tech> ([config](https://github.com/felicianotech/feliciano.tech/blob/master/.circleci/config.yml))
- <https://ElectSanchez.com>

## Feedback & Contributing

Please feel free to open GitHub Issues for any questions, bugs, request, etc. You can also write a new post on [Hugo's forum](https://discuss.gohugo.io/) and ping me, `FelicianoTech`. Pull Request welcome as well.
