FROM ubuntu:14.04

MAINTAINER Simon "simon.theodosius@gmail.com"

# ------------
# Prepare Gmod
# ------------

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install lib32gcc1 lib32stdc++6 wget vim git
RUN mkdir /steamcmd
WORKDIR /steamcmd
RUN wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz
RUN tar -xvzf steamcmd_linux.tar.gz
RUN mkdir /gmod-base
RUN /steamcmd/steamcmd.sh +login anonymous +force_install_dir /gmod-base +app_update 4020 validate +quit

CMD ["/bin/sh"]