FROM ruby:2.6.3

RUN curl https://deb.nodesource.com/setup_14.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && \
  apt-get install -y nodejs yarn imagemagick libmariadb-dev

RUN gem install rails -v 6.1.4

RUN mkdir /app
WORKDIR /app
