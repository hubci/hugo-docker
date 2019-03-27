FROM golang:1.12 as builder

#RUN git clone --depth=1 https://github.com/gohugoio/hugo.git && \
RUN mkdir /hugo && cd /hugo && \
	BUILD_DATE=$(date +%Y-%m-%dT%H:%M:%S%z) && \
	curl -sSL "https://github.com/gohugoio/hugo/tarball/master" | tar -xz --strip-components=1 && \
	go build -ldflags "-X github.com/gohugoio/hugo/common/hugo.buildDate=${BUILD_DATE}" -tags extended


FROM cibuilds/hugo:latest

LABEL maintainer="ricardo@feliciano.tech"

RUN rm /usr/bin/hugo

ENV HUGO_VERSION=master

COPY --from=builder hugo /usr/local/bin/

CMD ["htmlproofer","--help"]

EXPOSE 1313
