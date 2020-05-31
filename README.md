# CI Builds: Hugo [![Build Status](https://circleci.com/gh/cibuilds/hugo.svg?style=shield)](https://circleci.com/gh/cibuilds/hugo) [![Docker Repository](https://img.shields.io/badge/Docker%20Repository-Docker%20Hub-blue.svg)](https://hub.docker.com/r/cibuilds/hugo/) [![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/cibuilds/hugo/master/LICENSE)

A Docker image for [Hugo](http://gohugo.io/), a static-site generator. Includes [HTMLProofer](https://github.com/gjtorikian/html-proofer) for testing. Hosted on [Docker Hub](https://hub.docker.com/r/cibuilds/hugo/).

Currently, this Docker image is designed to be used as a base image on CircleCI for building, testing, and deploying Hugo based websites.

I plan to make this image useful for local testing and build/test/deploy on other CI provider as well in the future.


## Using on CircleCI

Using this image to build your Hugo generated website on CircleCI can be as simple as using the following configuration in `.circleci/config.yml`:

```
version: 2.1
jobs:
  build:
    docker:
      - image: cibuilds/hugo:0.60
    steps:
      - checkout
      - run:
          name: "Run Hugo"
          command: HUGO_ENV=production hugo -v -s src/
      - run:
          name: "Test Website"
          command: htmlproofer src/public --allow-hash-href --check-html --empty-alt-ignore --disable-external
```

### Version

`0.54` is the version of Hugo to use.
You can use a complete SemVer version number such as `0.54.0` to specifically pin to that release.
You can also use `0.54` which will use Hugo v0.54.0, and then `0.54.1`, and `0.54.2`, and so on as newer versions are released.

You can also use `latest` to always use the latest version of Hugo or `nightly` to use the in-development version.
`nightly` is a snapshot of whatever is in the `master` branch of Hugo, which is unreleased, updated at least once a day.

`edge` - the edge tag is available as a testing ground for new changes to this image.
Changes to `master` will appear immediately in the `hugo:edge` image.
The next proper release will also include those changes unless they are removed before hand.

In this example, we assume the Hugo files are in a directory called `src` in the repo. A full walkthrough on how to do this can be found on [CircleCI's blog](https://circleci.com/blog/build-test-deploy-hugo-sites/).


## Building The Images

To prepare new images, I run `./gen-dockerfiles.sh` locally, passing it the current Hugo versions that I am "supporting". For example, for the initial release, I ran `./gen-dockerfiles.sh 0.18.1 0.19`.

That creates the Dockerfiles and the build script for them.
For actual, proper releases though, I run the `./release.sh` script.
This script runs `gen-dockerfiles.sh` but also does all the Git work to publish a proper release.
The flag `[release]` is added to the commit message to initiate a release.


## Websites Using This & Examples

The following sites use Hugo and this image (and some have their config public):

- <https://www.Feliciano.Tech> ([repository](https://github.com/felicianotech/www.feliciano.tech))
- <https://HugoNewsletter.com> ([repository](https://github.com/felicianotech/hugonewsletter.com))
- <https://DocsThursday.com> ([repository](https://github.com/felicianotech/docsthursday.com))
- <https://www.DiscourseHub.com> ([repository](https://github.com/discoursehub/www.discoursehub.com))


## Feedback & Contributing

Please feel free to open GitHub Issues for any questions, bugs, request, etc. You can also write a new post on [Hugo's forum](https://discuss.gohugo.io/) and ping me, `FelicianoTech`. Pull Request welcome as well.
