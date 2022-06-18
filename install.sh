#!/bin/bash

#build libdecsync
#docker run -v "$(pwd)/build/libdecsync:/libdecsync/build/bin" build-libdecsync


#build
docker build decsync-evolution -t build-decsync-evolution
docker run -v "$(pwd)/build:/Evolution-DecSync/build" build-decsync-evolution
sudo chown -R jonas:jonas build

#install
sudo ninja -C build install