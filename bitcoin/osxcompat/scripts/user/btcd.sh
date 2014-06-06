#!/bin/bash

# If you changed the path from the instruction document, then change
# it here to.  This assumes the 32-bit Bitcoin Core binaries for Linux
# are in /usr/local/bitcoin and the virtual drive is mounted to
# /mnt/bitcoin

/usr/local/bitcoin/bitcoind -conf=/mnt/bitcoin/bitcoin.conf -datadir=/mnt/bitcoin/
