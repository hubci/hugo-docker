# vim:set ft=dockerfile:

FROM golang:1.12

ENV HUGO_VERSION=0.55.6
ENV HUGO_DOWNLOAD_URL=https://github.com/gohugoio/hugo/archive/v${HUGO_VERSION}.tar.gz

RUN wget "$HUGO_DOWNLOAD_URL" && \
	tar xzf v${HUGO_VERSION}.tar.gz && \
	cd hugo-${HUGO_VERSION} && \
	buildDate=$(date +%Y-%m-%dT%H:%M:%S%z) && \
	apt-get update && apt-get install -y build-essential gcc g++ libc++1 libc++-dev && \
	CGO_ENABLED=1 go build -a -tags extended -ldflags "-extldflags -static -X github.com/gohugoio/hugo/common/hugo.buildDate=${buildDate}" -o bin/hugo


FROM ruby:2.6-alpine

LABEL maintainer="ricardo@feliciano.tech"

ENV HUGO_VERSION=0.55.6

RUN apk add --no-cache \
		bash \
		binutils \
		build-base \
		ca-certificates \
		curl \
		gcc \
		git \
		g++ \
		jq \
		libcurl \
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
