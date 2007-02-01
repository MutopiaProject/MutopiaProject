#!/bin/bash
#compile ly files to ps

if [ ! -r "$1" ] ; then
    echo "Usage: $0 sourcefile.ly"
    exit 1
fi

name="`echo \"$1\" |sed 's/\.ly$//'`"

[ ! "$name.ly" = "$1" ] && echo "Error: name must end .ly" && exit 1

lilypond -dno-point-and-click "$name".ly
gzip "$name".ps
rm -f "$name"*.midi
