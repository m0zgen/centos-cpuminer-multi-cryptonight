#!/bin/bash

yum -y install git automake gcc make curl-devel

git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
make
