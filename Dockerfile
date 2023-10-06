FROM debian:bookworm

RUN apt-get update && apt-get install -y build-essential
RUN apt-get install -y devscripts cmake debhelper
RUN apt-get install -y dh-exec pkg-config libboost-dev libboost-filesystem-dev 
RUN apt-get install -y libasound2-dev libgles2-mesa-dev 
RUN apt-get install -y gcc-multilib g++-multilib
RUN apt-get install -y libtool autoconf
RUN apt-get install -y git joe ccache
RUN apt-get install -y libcurl4-gnutls-dev
RUN apt-get install -y uuid-dev
RUN apt-get install -y qt6-base-dev
# add ccache to PATH
ENV PATH /usr/lib/ccache:${PATH}

