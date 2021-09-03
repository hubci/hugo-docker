# vim:set ft=dockerfile:

FROM cimg/go:1.17 as compiler

RUN git clone --depth=1 https://github.com/gohugoio/hugo.git && cd hugo && \
	BUILD_DATE=$(date +%Y-%m-%dT%H:%M:%S%z) && \
	go build -ldflags "-X github.com/gohugoio/hugo/common/hugo.buildDate=${BUILD_DATE}" -tags extended && \
	ls -lah


FROM cibuilds/hugo:latest

LABEL maintainer="Ricardo N Feliciano <Ricardo@Feliciano.Tech>"

RUN sudo rm /usr/bin/hugo

ENV HUGO_VERSION=master

COPY --from=compiler /home/circleci/project/hugo/hugo /usr/local/bin/

CMD ["htmlproofer","--help"]

EXPOSE 1313
