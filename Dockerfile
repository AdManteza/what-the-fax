FROM ruby:2.6.5-slim
RUN apt-get update -qq && \
    apt-get install -y nano build-essential libpq-dev && \
    gem install bundler
RUN mkdir /app
COPY Gemfile Gemfile.lock /app/
WORKDIR /app
RUN bundle install
COPY . /app