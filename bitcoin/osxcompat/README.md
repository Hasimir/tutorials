Making Bitcoin Core 0.9+ Work On OS X 10.5
==========================================


Introduction
------------

In early 2014 the decision was made to no longer continue support for OS X 10.5 (Leopard) and 10.4 (Tiger), even on Intel architecture.  This decision came into effect with release 0.9.0 of Bitcoin Core (bitcoind and Bitcoin-Qt).

This has placed a number of people in an unfortunate situation if they are, for whatever reason, unable to update their OS X systems to 10.6 (Snow Leopard) or above.  Particularly given the fact that Bitcoin Core 0.9.x introduces a number of important security fixes (e.g. for the Heartbleed OpenSSL bug) and privacy enhancing features (e.g. coin control), as well as being able to set a data directory that is not in the ~/Library/Application\ Support/Bitcoin/ directory.

In order to address this, the following work around is offered to the community.

Please note that this solution has only been tested on OS X 10.5.8, but it should work on any version of OS X with Intel (x86 or x86_64) architecture.


What You Will Need
------------------

* An Apple Mac running OS X 10.4 (Tiger) or above.
* An external hard drive (this example uses an Air Port/Time Capsule).
* A Linux distribution.
* At least some understanding of Linux and the Terminal on OS X.
* VirtualBox virtualisation software (or VMWare, or similar).
* A BitTorrent client.
* An Internet connection (obviously).


Initial Preparation
-------------------

Assuming all ultimately goes well, the first thing you will be doing after setting this up will be to rebuild the blockchain on the new system, so start by downloading the [bootstrap.dat torrent](https://bitcoin.org/bin/blockchain/) from bitcoin.org.  The torrent is nearly 17Gb, so you may as well get started with that.

The next thing to do is go to your existing client and make a backup or two of your wallet.dat file if you have not done so already.  This is, and I cannot stress this enough, absolutely essential.  Personally I make a backup every time I create a new address.

Once this has been done go to the [VirtualBox website](https://www.virtualbox.org/) to get the software.  If you are running OS X 10.5 then you should down the latest of the [VirtualBox 4.1.x branch](https://www.virtualbox.org/wiki/Download_Old_Builds_4_1), the last to support Leopard.  As of this writing it is version 4.1.32.  If you are running OS X 10.4 then you should download [VirtualBox 3.0](https://www.virtualbox.org/wiki/Download_Old_Builds_3_0) or one of the later 2.x releases.  Tiger support in VirtualBox ran from 2.4.1 to 3.0.x and was dropped in 3.1.0.

For reference, I used [VirtualBox 4.1.32](http://download.virtualbox.org/virtualbox/4.1.32/VirtualBox-4.1.32-92798-OSX.dmg) with the [Extension Pack](http://download.virtualbox.org/virtualbox/4.1.32/Oracle_VM_VirtualBox_Extension_Pack-4.1.32-92798.vbox-extpack) on OS X 10.5.8 Leopard.
