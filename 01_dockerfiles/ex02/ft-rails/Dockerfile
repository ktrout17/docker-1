# Basic ruby image setup
FROM ruby:2.6.2
RUN apt-get update -y && apt-get install -y build-essential libpq-dev nodejs sqlite3 gem
RUN gem install bundler --no-document
RUN gem install rails --no-document
RUN gem install rake -v 12.3.2 --no-document

# Run on ft-rails:on-build
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN rake _12.3.2_ db:migrate
ONBUILD RUN rake _12.3.2_ db:seed
ONBUILD RUN rake _12.3.2_

# https://hub.docker.com/_/ruby
# https://guides.rubyonrails.org/getting_started.html
