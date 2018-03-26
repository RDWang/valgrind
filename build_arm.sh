#!/bin/sh  
#编译valgrind脚本程序

PWD=`pwd`
SCRIPTE_PATH=${PWD}

#交叉编译配置
cd valgrind-3.13.0
./configure --host=arm-linux-gnueabihf CC=arm-linux-gnueabihf-gcc CPP=arm-linux-gnueabihf-cpp CXX=arm-linux-gnueabihf-g++ --prefix=/tmp/target
make 
make install

#处理编译文件
cd ${SCRIPTE_PATH}
mkdir target
cp -fr /tmp/target/* target/
arm-linux-gnueabihf-strip target/bin/*
arm-linux-gnueabihf-strip target/lib/valgrind/*
tar -cjf valgrind-arm.tar.bz2 target
