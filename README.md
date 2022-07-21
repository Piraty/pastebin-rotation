# pbr - pastebin service rotation

Send stuff to various paste services.

The default mode is round-robin all available services.


## Supported paste services

* [termbin.com](http://termbin.com)
* [ttm.sh](https://ttm.sh)
* [ix.io](http://ix.io)


## Usage

Pipe to `pbr`

	echo foobar | pbr

Provide files as arguments to `pbr`

	pbr ./log1 ./log2

Chose a service randomly instead of sequentially
	
	export PBR_MODE=random


## Similar Projects

* [pastebinit](https://launchpad.net/pastebinit)
* [wgetpaste](https://github.com/zlin/wgetpaste)