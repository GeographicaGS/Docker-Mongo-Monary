#!/bin/env sh

# Get Mongo C Driver sources
cd /tmp
wget https://github.com/mongodb/mongo-c-driver/releases/download/1.1.10/mongo-c-driver-1.1.10.tar.gz
tar -xzf mongo-c-driver-1.1.10.tar.gz
cd mongo-c-driver-1.1.10/

# Compile Mongo C Driver
./configure --enable-ssl --enable-sas
make -j8 && make install
ldconfig

# Remove sources
cd ..
rm mongo-c-driver-1.1.10.tar.gz
rm -R mongo-c-driver-1.1.10/

# Install Monary and Pymongo from PyPi
pip install pymongo monary 

exit
