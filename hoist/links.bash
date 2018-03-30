#!/bin/bash

make_link(){
    ln -s "$1" "$2";
}

links_file="./symlinks.json";
length=$(cat $links_file | jq '. | length');

for (( i = 0; i < $length; i++ )); do
    origin=$(cat $links_file | jq ".[$i] | .origin");
    destination=$(cat $links_file | jq ".[$i] | .destination");
    make_link "$origin" "$destination";
done
