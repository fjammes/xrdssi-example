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

## Run

```
./etc/init.d/xrootd start
ssicl 127.0.0.1:1094
# and then play wth .bat files
```
