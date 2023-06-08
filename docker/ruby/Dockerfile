FROM ruby:2.4.2

WORKDIR /app

RUN gem install bundler
ADD ./Gemfile* ./
RUN bundle install
