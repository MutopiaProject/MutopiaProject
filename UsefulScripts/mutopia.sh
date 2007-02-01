#!/bin/bash
#compile ly files to ps

if [ ! -r "$1" ] ; then
    echo "Usage: $0 sourcefile.ly"
    exit 1
fi

for parameter in "$@"
do
   filename="`basename \"$parameter\"`"
   dirname="`dirname \"$parameter\"`"
   name="`echo \"$filename\" |sed 's/\.ly$//'`"
   [ ! "$name.ly" = "$filename" ] && echo "Error: name must end .ly" && exit 1

   cd "$dirname"

   lilypond --preview -dno-include-book-title-preview -dresolution=72 -dno-point-and-click -dpaper-size=\"a4\" "$name".ly
   mv "$name".ps "$name"-a4.ps
   mv "$name".pdf "$name"-a4.pdf
   mv "$name".preview.png "$name"-preview.png
   rm -f "$name".preview.eps "$name".preview.pdf
   gzip "$name"-a4.ps

   lilypond -dno-point-and-click -dpaper-size=\"letter\" "$name".ly
   mv "$name".ps "$name"-let.ps
   mv "$name".pdf "$name"-let.pdf
   gzip "$name"-let.ps

   for t in *.midi; do mv "$t" "`echo \"$t\" |sed 's/.midi$/.mid/'`"; done

   cd -
done
