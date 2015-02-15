set -e
set -x

INC=$XROOTD_DIR/include/xrootd
LIB=$XROOTD_DIR/lib
SRC_DIR=./src/server
OUT_DIR=lib

mkdir -p $OUT_DIR

g++ -g -I$SRC_DIR -I$INC -L$LIB -shared -fPIC -o $OUT_DIR/libSsiSv.so \
$SRC_DIR/XrdSsiSvService.cc $SRC_DIR/XrdSsiSvSession.cc \
$SRC_DIR/XrdSsiSvStreamActive.cc $SRC_DIR/XrdSsiSvStreamPassive.cc
