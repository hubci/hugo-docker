# vim:set ft=dockerfile:

FROM golang:1.12.4

ENV HUGO_VERSION=0.55.5
ENV HUGO_DOWNLOAD_URL=https://github.com/gohugoio/hugo/archive/v${HUGO_VERSION}.tar.gz

RUN wget "$HUGO_DOWNLOAD_URL" && \
	tar xzf v${HUGO_VERSION}.tar.gz && \
	cd hugo-${HUGO_VERSION} && \
	buildDate=$(date +%Y-%m-%dT%H:%M:%S%z) && \
	apt-get update && apt-get install -y build-essential gcc g++ libc++1 libc++-dev && \
	#go build -a --tags netgo --tags extended --tags dev --ldflags "-w -X github.com/gohugoio/hugo/common/hugo.buildDate=${buildDate} -extldflags '-static'" -o bin/hugo *.go
	#CGO_ENABLED=1 go build -a -tags extended -ldflags '-extldflags "-static"' -o bin/hugo
	#CGO_ENABLED=1 go build -a -tags extended -ldflags '-extldflags "-static" -X github.com/gohugoio/hugo/common/hugo.buildDate=${buildDate}' -o bin/hugo
	CGO_ENABLED=1 go build -a -tags extended -ldflags "-extldflags -static -X github.com/gohugoio/hugo/common/hugo.buildDate=${buildDate}" -o bin/hugo
	#CGO_ENABLED=1 go build -a -tags extended -ldflags "-extldflags -static" -o bin/hugo


FROM ruby:2.6-alpine

LABEL maintainer="ricardo@feliciano.tech"

ENV HUGO_VERSION=0.55.5

RUN apk add --no-cache \
		bash \
		binutils \
		build-base \
		ca-certificates \
		curl \
		gcc \
		git \
		g++ \
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
