FROM ruby:alpine
RUN apk add --update build-base postgresql-dev tzdata nodejs
RUN gem install rails -v '5.2'
RUN gem install rubocop-rspec
WORKDIR /app
ADD Gemfile Gemfile.lock /app/
RUN bundle install
