FROM alpine
MAINTAINER nick.campion@1and1.com
RUN apk update && \
    apk add ruby git && \
    apk --update add --virtual build_deps \
    build-base libffi-dev ruby-dev && \
    echo "gem: --no-ri --no-rdoc" > ~/.gemrc && \
    gem install rspec watir-webdriver unit watir-ng headless && \
    apk del build_deps && \
    rm -rf /var/cache/apk/*
