#!/bin/sh

slowbuild () {
    git clone git://github.com/iriscouch/build-couchdb.git
    cd build-couchdb
    git submodule init
    git submodule update
    rake
    # Then, you need to modify ~/build-couchdb/build/etc/couchdb/local.ini
}

fastbuild () {
    curl http://dotcloud-plugins.s3.amazonaws.com/couchdb.tar.gz |
    tar -zxf-
}

cd
fastbuild
