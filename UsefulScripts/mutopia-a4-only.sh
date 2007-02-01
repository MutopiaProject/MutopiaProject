#!/bin/bash
#compile ly files to ps

if [ ! -r "$1" ] ; then
    echo "Usage: $0 sourcefile.ly"
    exit 1
fi

name="`echo \"$1\" |sed 's/\.ly$//'`"
nameshort="`echo \"$1\" |sed 's/\-a4.ly$//'`"

[ ! "$name.ly" = "$1" ] && echo "Error: name must end .ly" && exit 1

lilypond --preview -dno-include-book-title-preview -dresolution=72 -dno-point-and-click "$name".ly

mv "$name".preview.png "$nameshort"-preview.png
rm -f "$name".preview.eps "$name".preview.pdf
gzip "$name".ps

for t in *.midi; do mv "$t" "`echo \"$t\" |sed 's/-a4.midi$/.mid/'`"; done
