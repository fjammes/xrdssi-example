INC=$XROOTD_DIR/include/xrootd
LIB=$XROOTD_DIR/lib

g++ -g -I. -I$INC -L$LIB -Llibcl -lXrdSsi -o ./bin/ssicl XrdSsiClMain.cc XrdSsiClUI.cc
#g++ -g -I. -Isrc -Llib -lXrdUtils -shared -fPIC -o lib/myservice.so myservice.cc
