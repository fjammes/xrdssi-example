INC=$XROOTD_DIR/include/xrootd
LIB=$XROOTD_DIR/lib
SRC_DIR=./src/client/

g++ -g -I. -I$INC -L$LIB -Llibcl -lXrdSsi -o ./bin/ssicl $SRC_DIR/XrdSsiClMain.cc $SRC_DIR/XrdSsiClUI.cc
#g++ -g -I. -Isrc -Llib -lXrdUtils -shared -fPIC -o lib/myservice.so myservice.cc
