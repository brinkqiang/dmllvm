#!/bin/bash

# - install depends tools
# yum -y install git
# yum -y install gcc gcc-c++ autoconf libtool automake make
#

# - clone code
# git clone https://github.com/brinkqiang/dmllvm.git
# pushd dmllvm
# git submodule update --init --recursive
#

# pushd thirdparty/depends_path
# libtoolize && aclocal && autoheader && autoconf && automake --add-missing
# sh configure
# popd

rm -rf build
mkdir -p build
pushd build
cmake -DCMAKE_BUILD_TYPE=relwithdebinfo ..
# cmake --build . --config relwithdebinfo
make -j$(nproc)
popd

# popd

# echo continue && read -n 1
