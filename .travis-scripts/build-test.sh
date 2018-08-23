if [ -z "$CXX" ]; then
    CXX=$(type -p g++)
fi

if [ -z "$CC" ]; then
  CC=$(type -p gcc)
fi

if [ -z "$CMAKE" ]; then
  CMAKE=$(type -p cmake)
fi

$CMAKE -DCMAKE_CXX_COMPILER=$CXX -DCMAKE_C_COMPILER=$CC ..
make -j
