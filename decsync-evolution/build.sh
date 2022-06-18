#!/bin/bash
echo "cloning libdecsync"
git clone https://github.com/39aldo39/libdecsync

echo "building libdecsync"
cd /target/libdecsync
make
make install

cd /target
echo "cloning evolution-decsync"
git clone --recursive https://github.com/39aldo39/Evolution-DecSync

cd /build/Evolution-DecSync
echo "building evolution-decsync"
meson build 