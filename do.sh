#!/bin/bash

if [ ! -e /usr/bin/dtc ]; then
	echo "install dtc, please (apt-get install device-tree-compiler)"
else
	for i in `ls -1 *.dtb`; do
  	dtc -I dtb -O dts "$i" -o "`echo $i | sed -e s'/\.dtb/\.dts/'`"
	done
fi
exit 0
