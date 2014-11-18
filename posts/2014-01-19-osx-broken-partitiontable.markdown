---
title:  OS X Mavericks broken partition table
date:   2014-01-19 02:00:00
---
I'm a total OS X newbie, and I've no idea what I'm doing most of the time.

So I managed to completely break my partition table on my Macbook Pro, and it
happened after I pressed that magic "repair disk" button in disk util. It did
not repair my disk but it decided to break the partition table instead. (I had
Linux partitions there as well).

Symptoms:  

 * A big question mark on the screen on boot. 
 * Command-R had to download from the web to restore.

The magic command, that took hours to find:
```shell
$ diskutil partitionDisk disk0 1 GPTFormat "Journaled HFS+" "Macintosh HD" 250G
```
This created a JHFS+ partiton on my boot disk. (it's 250 GB ssd), and I was able to reinstall OS X after that.

Luckily, all my [dotfiles][dotfiles] and data are in the cloud, so nothing of importance was lost.

[dotfiles]: http://github.com/laat/dotfiles
