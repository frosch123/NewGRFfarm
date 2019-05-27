FROM debian:stretch-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y --no-install-recommends \
  git mercurial make tar xz-utils \
  python3  python3-pillow python3-ply python3-setuptools python3-dev \
  g++ libboost-dev libpng-dev \
  python3-chameleon python3-markdown graphviz \
  gimp dos2unix \
  && apt-get clean

RUN mkdir -p /tools && \
    ln -s /tools/nml/nmlc /usr/local/bin/nmlc && \
    ln -s /tools/grfcodec/grfcodec /usr/local/bin/grfcodec && \
    ln -s /tools/grfcodec/grfid /usr/local/bin/grfid && \
    ln -s /tools/grfcodec/grfstrip /usr/local/bin/grfstrip && \
    ln -s /tools/grfcodec/nforenum /usr/local/bin/nforenum

ARG uid=1000
ARG gid=1000
ARG user=farm
ARG group=farm
RUN groupadd -g ${gid} ${group} && useradd -m -u ${uid} -g ${gid} ${user}
USER ${user}

WORKDIR /project

