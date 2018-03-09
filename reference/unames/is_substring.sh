#!/bin/sh

stringContain() { [ -z "${2##*$1*}" ] && [ -z "$1" -o -n "$2" ]; }

is_substring(){
    case "$2" in
        *$1*) return 0;;
        *) return 1;;
    esac
}
