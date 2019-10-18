FROM ubuntu:16.04
RUN apt update
RUN apt install -y rpm2cpio cpio wget gfortran gcc ragel libssl-dev make g++ cmake git autogen \
	libwxgtk3.0-dev libfreetype6-dev libglew-dev libcppunit-dev python3-psutil pkg-config xvfb \
	xdotool ffmpeg imagemagick valgrind libboost-test-dev xfwm4 language-pack-en-base \
	libboost-python-dev python3-dev libsuperlu-dev sshpass libopenblas-dev \
	clang libboost-all-dev cmake
RUN apt-get update && \
    apt-get install -y make g++ make qt5-qmake qt5-default openssh-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENV LANG en_US.utf-8
