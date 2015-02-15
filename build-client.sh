set -e
set -x

INC=$XROOTD_DIR/include/xrootd
LIB=$XROOTD_DIR/lib
SRC_DIR=./src/client/
OUT_DIR=bin

mkdir -p $OUT_DIR

g++ -g -I$SRC_DIR -I$INC -L$LIB -Llibcl -lXrdSsi -o $OUT_DIR/ssicl $SRC_DIR/XrdSsiClMain.cc $SRC_DIR/XrdSsiClUI.cc
