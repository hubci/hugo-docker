# vim:set ft=dockerfile:

# Base off of CircleCI's Go image
FROM cimg/go:1.17

LABEL maintainer="Ricardo N Feliciano <Ricardo@Feliciano.Tech>"

ENV HUGO_VERSION 0.91.1
ENV HUGO_DOWNLOAD_URL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz

# Install HTML Proofer - eventually to be replaced with non-Ruby alternative
RUN sudo apt-get update && sudo apt-get install -y \
		libffi-dev \
		rsync \
		ruby-full \
		# Needed for AsciiDoc support in Hugo \
		asciidoctor \
		# Needed for the Nokogiri gem \
		zlib1g-dev && \
	sudo apt-get clean && \
	sudo gem install html-proofer --no-document

RUN curl -L $HUGO_DOWNLOAD_URL | tar xzv hugo && \
	sudo mv hugo /usr/bin/hugo


CMD ["htmlproofer", "--help"]

EXPOSE 1313
