#!/bin/bash
# Compile ly files to ps

# Check environment variables are set up
if [ -z "$LILYPOND_BASE" ] || [ -z "$LILYPOND_BIN" ]; then
   echo "LILYPOND_BASE and LILYPOND_BIN environment variables must be set"
   exit 1
fi

# Check .ly file has been specified
if [ ! -r "$1" ] ; then
   echo "Usage: $0 sourcefile.ly"
   exit 1
fi

# LilyPond version specific fixes
# Note - these will need to be updated as the default version changes
# Currently assumed default version: 2.10
if [[ $LILYPOND_VERSION = 2\.11 ]] || [[ $LILYPOND_VERSION = 2\.11\.? ]] || [[ $LILYPOND_VERSION = 2\.11\.?? ]]; then
   # NB. This changed mid-way through 2.11
   PREVIEW=-dpreview;
else
   PREVIEW=--preview;
fi

for parameter in "$@"
do
   filename="`basename \"$parameter\"`"
   dirname="`dirname \"$parameter\"`"
   name="`echo \"$filename\" |sed 's/\.ly$//'`"
   [ ! "$name.ly" = "$filename" ] && echo "Error: name must end .ly" && exit 1

   cd "$dirname"

   $LILYPOND_BIN $PREVIEW -dno-include-book-title-preview -dresolution=72 -dno-point-and-click -dpaper-size=\"a4\" "$name".ly
   mv "$name".ps "$name"-a4.ps
   mv "$name".pdf "$name"-a4.pdf
   mv "$name".preview.png "$name"-preview.png
   rm -f "$name".preview.eps "$name".preview.pdf
   gzip "$name"-a4.ps

   $LILYPOND_BIN -dno-point-and-click -dpaper-size=\"letter\" "$name".ly
   mv "$name".ps "$name"-let.ps
   mv "$name".pdf "$name"-let.pdf
   gzip "$name"-let.ps

   for t in *.midi; do mv "$t" "`echo \"$t\" |sed 's/.midi$/.mid/'`"; done

   cd -
done
