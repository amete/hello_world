#! /usr/bin/env bash

cd /tmp
if [ -z "$CXX" ]; then
    CXX=$(type -p g++)
fi
if [ -z "$CC" ]; then
	CC=$(type -p gcc)
fi
if [ -z "$CMAKE" ]; then
	CMAKE=$(type -p cmake)
fi

# For debugging, handy to print what we're doing
cmd="$CMAKE -DCMAKE_CXX_COMPILER=$CXX -DCMAKE_C_COMPILER=$CC $CMAKE_EXTRA /mnt"
echo $cmd
$cmd
make -j 4
make test
