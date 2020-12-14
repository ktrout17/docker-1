#!/bin/bash

echo "\e[96mBuilding image...\e[0m"
docker build -t ex01 .
echo "\e[92mBuild complete.\e[0m"