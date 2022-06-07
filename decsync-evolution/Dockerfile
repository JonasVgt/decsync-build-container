FROM ubuntu

RUN apt update -y

#set timezone (needed for libedata-cal2.0-dev)
RUN ln -s /usr/share/zoneinfo/Etc/GMT /etc/localtime

RUN apt install -y \
	build-essential \
	openjdk-8-jdk \
	libncurses5 \
	git \ 
	meson \
	ninja-build \
	pkg-config \
	libjson-c-dev \
	libebook1.2-dev \
	libedata-book1.2-dev \
	libedata-cal2.0-dev \
	evolution-dev

RUN git clone https://github.com/39aldo39/libdecsync
RUN git clone --recursive https://github.com/39aldo39/Evolution-DecSync

#build and install libdecsync
WORKDIR /libdecsync
RUN make
RUN make install

#build meson. Build at /Evolution-DecSync/build/
WORKDIR /Evolution-DecSync
CMD meson build 
