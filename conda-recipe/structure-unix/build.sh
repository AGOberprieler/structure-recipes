#!/bin/bash

# This is copied from: https://github.com/bioconda/bioconda-recipes/blob/master/recipes/structure/build.sh

make

binaries="\
structure \
"

mkdir -p $PREFIX/bin
for i in $binaries; do cp $SRC_DIR/$i $PREFIX/bin && chmod +x $PREFIX/bin/$i; done