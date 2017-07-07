#!/bin/bash
#
# This script was written by Emperor Starfinder
# for the Second Galaxy Development Team and is 
# provided to you via open source means.  The original
# documentation used to create this script came from:
# https://www.tecmint.com/clear-ram-memory-cache-buffer-and-swap-space-on-linux/
# Many thanks to the author of the blog post for their insight.
# Emperor Starfinder <emperor@secondgalaxy.com>
# May 16, 2017
#
# To clear PageCache only, then uncomment this
#echo "echo 1 > /proc/sys/vm/drop_caches"
#
# To clear dentries and inodes only, then uncomment this
#echo "echo 2 > /proc/sys/vm/drop_caches"
#
# To clear PageCache, dentires, and inodes at the same time, then uncomment this
# Note, we are using "echo 3", but it is not recommended in production instead use "echo 1"
echo "echo 3 > /proc/sys/vm/drop_caches"

# To clear the Swap Space in Linux, then uncomment this
#swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'" root
#
# To clear the PageCache, dentries, inodes, and Swap Space at the same time, then uncomment this
#echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'
