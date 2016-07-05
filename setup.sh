#!/bin/bash
DSTDIR=~/.TelegramDesktop/tdata/ticons
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $DIR

if [ $1 == "--install" ]
	then
		if [ -d $DSTDIR ]
			then
				rm $DSTDIR/* 2> /dev/null
			else
				mkdir -p $DSTDIR
		fi
		cp ./icons/*.png $DSTDIR

		for((i=2; i<500; i++))
			do
				ln -s $DSTDIR/ico_22_1.png $DSTDIR/ico_22_$i.png
				ln -s $DSTDIR/icomute_22_1.png $DSTDIR/icomute_22_$i.png
			done

elif [ $1 == "--remove" ]
	then
		rm $DSTDIR/*.png
fi
exit
