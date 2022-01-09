FROM ruby:2.6.3

RUN curl https://deb.nodesource.com/setup_16.x | bash

RUN apt-get update -qq && \
  apt-get install -y nodejs mariadb-client

RUN npm install -g yarn
RUN gem install rails -v 6.1.4

WORKDIR /app
