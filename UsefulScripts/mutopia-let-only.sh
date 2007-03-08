#!/bin/bash
# Compile (letter only) ly files to ps

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

name="`echo \"$1\" |sed 's/\.ly$//'`"

[ ! "$name.ly" = "$1" ] && echo "Error: name must end .ly" && exit 1

$LILYPOND -dno-point-and-click "$name".ly
gzip "$name".ps
rm -f "$name"*.midi
