FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /jta-crm
WORKDIR /jta-crm
ADD Gemfile /jta-crm/Gemfile
ADD Gemfile.lock /jta-crm/Gemfile.lock
RUN bundle install
ADD . /jta-crm
