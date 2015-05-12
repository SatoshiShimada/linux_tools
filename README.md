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

following command:

`cd ./linux_tools/`
`cp ./cp_pack.sh /bin/`
`mv ./mv_pack.sh /bin`

`echo "alias cp=\"/bin/cp_pack.sh\"" >> $HOME/.bashrc`
`echo "alias mv=\"/bin/mv_pack.sh\"" >> $HOME/.bashrc`

Relogin to shell.

## Author
[Satoshi Shimada](http://lin18.dip.jp)
