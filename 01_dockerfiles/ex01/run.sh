#!/bin/bash

echo "Starting teamspeak.."
docker run -d --name teamspeak --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01
echo "Teamspeak now running.."

echo "Connect with local client to ip of local docker machine, eg $(docker-machine ip Char)"
echo "When finished, run \`docker stop teamspeak\`"