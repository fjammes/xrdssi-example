#!/bin/sh

xrootd -c $XRDSSIEXAMPLE_DIR/etc/lsp.cf \
-l $XRDSSIEXAMPLE_DIR/var/log/xrootd.log -I v4 &
