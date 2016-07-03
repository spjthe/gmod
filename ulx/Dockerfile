FROM spjthe/gmod-base

MAINTAINER Simon "simon.theodosius@gmail.com"

# ------------
# Install ULib
# ------------

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install unzip
WORKDIR /gmod-base/garrysmod/addons
RUN mkdir ulib
WORKDIR /gmod-base/garrysmod/addons/ulib
RUN wget http://ulyssesmod.net/archive/ULib/ULib-v2_61.zip
RUN unzip ULib-v2_61.zip

# ------------
# Install ULX
# ------------

WORKDIR /gmod-base/garrysmod/addons
RUN mkdir ulx
WORKDIR /gmod-base/garrysmod/addons/ulx
RUN wget http://ulyssesmod.net/archive/ulx/ulx-v3_71.zip
RUN unzip ulx-v3_71.zip

CMD ["/bin/sh"]