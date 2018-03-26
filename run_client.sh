#!/bin/sh 
tar -xjf valgrind-arm.tar.bz2
export PATH=$PATH:/tmp/target/bin 
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tmp/target/lib 
export VALGRIND_LIB=/tmp/target/lib/valgrind
chmod -R +x /tmp/target/lib/valgrind/ 
