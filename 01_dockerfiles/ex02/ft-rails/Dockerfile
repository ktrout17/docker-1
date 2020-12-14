# Basic ruby image setup
FROM ruby:latest
RUN apt-get update -y
RUN apt-get install -y nodejs sqlite3 gem
RUN gem update
RUN gem install bundler rails

# Run on ft-rails:on-build
ONBUILD COPY . /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN rm -fR /opt/app/test.sh
ONBUILD RUN bundle install
ONBUILD RUN rails db:migrate
ONBUILD RUN rails db:seed

# https://hub.docker.com/_/ruby
# https://guides.rubyonrails.org/getting_started.html
