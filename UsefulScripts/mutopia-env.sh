#!/bin/bash

# Can specify a specific version on the command line
if [ "$1" = "-v" ]; then
   LILYPOND_VERSION=$2
   LILYPOND_BASE=/Applications/LilyPond/$LILYPOND_VERSION
else
   LILYPOND_VERSION=
   LILYPOND_BASE=/Applications/LilyPond
fi

export LILYPOND_VERSION
export LILYPOND_BASE
export LILYPOND_BIN=$LILYPOND_BASE/LilyPond.app/Contents/Resources/bin/lilypond
export CONVERT_LY_BIN=$LILYPOND_BASE/LilyPond.app/Contents/Resources/bin/convert-ly
