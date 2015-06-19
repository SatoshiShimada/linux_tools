Linux tools
====

## Target
Linux, Unix
shellscript

* cp_pack.sh
* mv_pack.sh

## Install

Download or make clone.

`cd ~/Downloads/`

`git clone https://github/SatoshiShimada/linux_tools.git`

Following command:

`cd ./linux_tools/`

`cp ./cp_pack.sh /bin/`

`mv ./mv_pack.sh /bin`

If only using BASH

`echo "alias cp=\"/bin/cp_pack.sh\"" >> $HOME/.bashrc`

`echo "alias mv=\"/bin/mv_pack.sh\"" >> $HOME/.bashrc`

Relogin to shell.

Finish!

## Author

[Satoshi Shimada](https://satoshishimada.github.io/)
