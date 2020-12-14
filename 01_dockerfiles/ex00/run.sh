#!/bin/bash

echo -e "\e[96mBuilding image..\e[0m"
docker build -t ex00 .
echo -e "\e[92mBuild complete.\e[0m"

echo -e "\e[96mStarting alpine container..\e[0m"
sleep 2
echo -e "\e[92malpine container now running..\e[0m"
winpty docker run -it ex00