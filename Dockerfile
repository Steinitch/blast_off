FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /blast_off
WORKDIR /blast_off
ADD Gemfile /blast_off/Gemfile
ADD Gemfile.lock /blast_off/Gemfile.lock
RUN bundle install
ADD . /blast_off
