FROM spjthe/gmod-ulx

MAINTAINER Simon "simon.theodosius@gmail.com"

# ------------
# Configure volume
# ------------

RUN mkdir /gmod-volume
VOLUME /gmod-volume
RUN mkdir /gmod-union
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install unionfs-fuse

ADD start-server.sh /start-server.sh

ENV WORKSHOP_COLLECTION="715608124"
ENV AUTH_KEY=""
ENV MAXPLAYERS="16"
ENV GAMEMODE="terrortown"
ENV MAP="ttt_bb_teenroom_b2"

CMD ["/bin/sh", "/start-server.sh"]