FROM ruby:2.6.5-slim

RUN apt-get update -qq && \
    apt-get install -y \
    nano \
    build-essential \
    curl \
    libpq-dev && \
    gem install bundler

# install postgres-client
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list && \
    curl -s https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    apt-get update && apt-get -y upgrade && apt-get install -y \
    postgresql-client-9.6

RUN mkdir /app

COPY Gemfile Gemfile.lock /app/

WORKDIR /app

RUN bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java
RUN bundle install

COPY . /app