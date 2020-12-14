#!/bin/sh
docker build --tag=ruby-env .
echo "First we need to create the onbuild image."
docker build -t ft-rails:on-build -f ft-rails/Dockerfile .

echo "Now that the app image is created, we can run the app"
docker run -it ft-rails:on-build

echo "Hello World!"