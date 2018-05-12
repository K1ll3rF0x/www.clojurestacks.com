FROM ruby:2.5.1

# https://oncletom.io/2015/docker-encoding/
ENV LANG C.UTF-8

RUN mkdir /clojurestacks
WORKDIR /clojurestacks
VOLUME /clojurestacks

ADD Gemfile Gemfile.lock /clojurestacks/

RUN gem install bundler && bundle install

CMD bundle exec jekyll serve --watch --force-polling -H 0.0.0.0 -P 4000
