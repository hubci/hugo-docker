# vim:set ft=dockerfile:

FROM circleci/golang:1.12

ENV HUGO_VERSION=0.55.5
ENV HUGO_DOWNLOAD_URL=https://github.com/gohugoio/hugo/archive/v${HUGO_VERSION}.tar.gz

RUN wget "$HUGO_DOWNLOAD_URL" && \
	tar xzf v${HUGO_VERSION}.tar.gz && \
	cd hugo-${HUGO_VERSION} && \
	buildDate=$(date +%Y-%m-%dT%H:%M:%S%z) && \
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -tags netgo -tags extended -tags dev -ldflags "-w -X github.com/gohugoio/hugo/common/hugo.buildDate=${buildDate} -extldflags '-static'" -o bin/hugo *.go

FROM ruby:2.6-alpine

LABEL maintainer="ricardo@feliciano.tech"

ENV HUGO_VERSION=0.55.5

RUN apk add --no-cache \
		bash \
		build-base \
		ca-certificates \
		curl \
		gcc \
		git \
		libcurl \
		libc6-compat \
		libgcc \
		libxml2-dev \
		libxslt-dev \
		openssh \
		rsync \
		wget && \
	gem install \
		html-proofer \
		nokogiri \
	--no-document

COPY --from=0 /go/hugo-${HUGO_VERSION}/bin/hugo /usr/bin/

CMD ["htmlproofer","--help"]

EXPOSE 1313
