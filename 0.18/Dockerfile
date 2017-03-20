FROM ruby:2.3-alpine

LABEL maintainer="ricardo@feliciano.tech"

ENV HUGO_VERSION=0.18.1
ENV HUGO_DOWNLOAD_URL=https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz

RUN apk add --update --no-cache --virtual build-dependencies

RUN apk add --update --no-cache \
		bash \
		build-base \
		ca-certificates \
		git \
		libcurl \
		libxml2-dev \
		libxslt-dev \
		openssh \
		wget && \
	wget "$HUGO_DOWNLOAD_URL" && \
	tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
	mv hugo*/hugo* /usr/bin/hugo && \
	rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
	rm -r hugo* && \
	gem install \
		html-proofer \
		nokogiri \
	--no-document && \
	apk del build-dependencies && \
	rm /var/cache/apk/*

CMD ["htmlproofer","--help"]

EXPOSE 1313
