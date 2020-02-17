ARG RUBY_VER=2.6
ARG RUBY_PATCH=5

FROM ruby:${RUBY_VER}.${RUBY_PATCH}-alpine
ENV APP_HOME /app
ENV LANG C.UTF-8
ARG RUBY_VER
ENV RUBY_VER=$RUBY_VER
RUN set -x && apk update \
     && apk upgrade \
     && apk --update --no-cache add tzdata postgresql-libs postgresql-client nodejs imagemagick \
     && apk --update --no-cache add --virtual build-dependencies build-base curl-dev git postgresql-dev yaml-dev zlib-dev
