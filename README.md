# Simple xrdssi test

## Pre-requisite

Install xrootd with eups stack

## Build

```shell
source loadLSST.bash
setup -r . 
# xrootd has been built with LSST libevent, why?
./build-*
```

## Configure

edit etc/lsp.cf values which contains xrdssi-example

## Run

```shell
./etc/init.d/xrootd start
# or
./run-xrootd-simple.sh
# rlwrap system package is a cmd-line helper
rlwrap ssicl 127.0.0.1:1094
# and then play wth .bat files
```

# Random notes about xrootd

## Cache management

What i've understood:

- case 1: server started and parent manager/supervisor cache empty: nothing is done and the parent node's cache will be populated by user queries
- case 2: server started and parent manager/supervisor cache exists: the cache is invalidated for the entries contained on the node, will it be populated by user queries?
- case 3: entry added to xrootd server: this entry is added by xrootd to the parent node's cache
