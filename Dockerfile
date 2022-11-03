FROM ruby:3.0.0-alpine

RUN apk add --update --no-cache \
    g++ \
    gcc \
    make \
    mysql-dev \
    tzdata

RUN gem install bundler -v 2.2.3

COPY ./octo/Gemfile ./octo/Gemfile.lock ./
RUN bundle install

ADD ./octo /app
WORKDIR /app

COPY ./docker/docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
