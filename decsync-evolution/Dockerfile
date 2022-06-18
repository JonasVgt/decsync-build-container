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

USER 1000:1000
COPY build.sh /target/build.sh
#RUN chmod +x /target/build.sh
WORKDIR /target

CMD  /bin/bash
