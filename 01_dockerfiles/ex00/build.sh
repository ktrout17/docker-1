#!/bin/bash

echo -e "\e[96mBuilding image..\e[0m"
docker build -t ex00 .
echo -e "\e[92mBuild complete.\e[0m"