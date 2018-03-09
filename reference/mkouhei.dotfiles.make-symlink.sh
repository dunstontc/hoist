#!/bin/sh -e
(
for i in dotfiles/.[0-9a-zA-Z]*
do
    if [ "$i" != "dotfiles/.git" ]; then
	echo $i
	ln -sf $i -t $HOME/
    fi
done
)
