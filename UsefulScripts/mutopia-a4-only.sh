#!/bin/bash
# Compile (A4 only) ly files to ps

# Set up general variables (this should be moved to external setup)
LILYPOND_BASE=/Applications/LilyPond

# Check .ly file has been specified
if [ ! -r "$1" ] ; then
    echo "Usage: $0 sourcefile.ly"
    exit 1
fi

# See if a specific version of LilyPond has been given
if [ -z "$2" ]; then
    LILYPOND=$LILYPOND_BASE/LilyPond.app/Contents/Resources/bin/lilypond
else
    LILYPOND=$LILYPOND_BASE/$2/LilyPond.app/Contents/Resources/bin/lilypond
fi

# LilyPond version specific fixes
# Note - these will need to be updated as the default version changes
# Currently assumed default version: 2.10
if [[ $2 = 2.11* ]]; then
    # NB. This changed mid-way through 2.11
    PREVIEW=-dpreview;
else
    PREVIEW=--preview;
fi

name="`echo \"$1\" |sed 's/\.ly$//'`"
nameshort="`echo \"$1\" |sed 's/\-a4.ly$//'`"

[ ! "$name.ly" = "$1" ] && echo "Error: name must end .ly" && exit 1

$LILYPOND $PREVIEW -dno-include-book-title-preview -dresolution=72 -dno-point-and-click "$name".ly

mv "$name".preview.png "$nameshort"-preview.png
rm -f "$name".preview.eps "$name".preview.pdf
gzip "$name".ps

for t in *.midi; do mv "$t" "`echo \"$t\" |sed 's/-a4.midi$/.mid/'`"; done
