#!/bin/sh

echo -e "\e[96mCreating onbuild image..\e[0m"
docker build -t ft-rails:on-build -f ft-rails/Dockerfile .
echo -e "\e[92mOnbuild image created\e[0m"

echo -e "\e[96mBuilding app image..\e[0m"
docker build -t railsapp-img .
echo -e "\e[92mApp image created..\e[0m"

echo -e "\e[96mStarting app..\e[0m"
winpty docker run -d --name ft-rails -it -p 3000:3000 railsapp-img
echo -e "\e[92mApplication is now is running!\e[0m"

echo -e "\e[93mAccess $(docker-machine ip Char):3000 in web browser to view application.\e[0m"
