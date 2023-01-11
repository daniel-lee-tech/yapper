FROM ruby:3.1.3

RUN apt update
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm
RUN npm install -g yarn
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app


