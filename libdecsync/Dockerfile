FROM ubuntu

RUN apt update -y
RUN apt install -y \
	build-essential \
	openjdk-8-jdk \
	libncurses5 \
    git

RUN git clone https://github.com/39aldo39/libdecsync

WORKDIR /libdecsync

CMD make