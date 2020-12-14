#!/bin/bash

echo -e "\e[96mStarting teamspeak..\e[0m"
docker run -d --name teamspeak --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01
echo -e "\e[92mTeamspeak now running..\e[0m"

echo -e "\e[92mConnect with local client to ip of local docker machine:"
echo -e "do \'docker logs teamspeak\' to find port of virtual server and privilege key" 
echo -e "open teamspeak and connect to $(docker-machine ip Char):<port from log> and enter key when prompted\e[0m"
echo -e "\e[92mWhen finished, run \`docker stop teamspeak\`\e[0m"