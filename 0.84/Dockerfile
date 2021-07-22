# vim:set ft=dockerfile:

# Base off of CircleCI's Go image
FROM cimg/go:1.15

LABEL maintainer="Ricardo N Feliciano <Ricardo@Feliciano.Tech>"

ENV HUGO_VERSION 0.84.0
ENV HUGO_DOWNLOAD_URL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz

# Install HTML Proofer - eventually to be replaced with non-Ruby alternative
RUN sudo apt-get update && sudo apt-get install -y \
		libffi-dev \
		rsync \
		ruby-full \
		# Needed for the Nokogiri gem
		zlib1g-dev && \
	sudo gem install html-proofer --no-document

RUN wget $HUGO_DOWNLOAD_URL && \
	tar -xzf hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz && \
	sudo mv hugo /usr/bin/hugo && \
	rm hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz LICENSE README.md


CMD ["htmlproofer", "--help"]

EXPOSE 1313
