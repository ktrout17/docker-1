#!/bin/bash

echo -e "\e[96mStarting alpine container..\e[0m"
winpty docker run -it ex00
echo -e "\e[92malpine container now running..\e[0m"