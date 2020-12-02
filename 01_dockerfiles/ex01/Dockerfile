# From a debian image you will add the appropriate sources to create a
# Teamspeak server, that will launch along with your container. It will be
# deemed valid if at least one user can connect to it and engage in a normal
# discussion (no far-fetched setup), so be sure to create your Dockerfile with
# the sources when it builds, they cannot be in your repository.

# https://forum.teamspeak.com/threads/132611-Install-teamspeak-3-server-on-Debian-8
# https://hub.docker.com/_/teamspeak

FROM debian

ENV TS3SERVER_LICENSE=accept

WORKDIR /home/teamspeak

RUN apt-get update
RUN apt-get install -y wget bzip2

EXPOSE 9987/udp 10011 30033
# Download teamspeak
RUN wget http://dl.4players.de/ts/releases/3.13.2/teamspeak3-server_linux_amd64-3.13.2.tar.bz2
# Install teamspeak
RUN tar -xvf teamspeak3-server_linux_amd64-3.13.2.tar.bz2

# 9987 default voice
# 10011 server query
# 30033 file transport


WORKDIR teamspeak3-server_linux_amd64

ENTRYPOINT sh ts3server_minimal_runscript.sh