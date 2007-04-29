#!/bin/bash

# Filename:         mutopia-env.sh
# Original author:  Chris Sawer
# Subversion:       $Revision$
# Last changed:     $Date$
#
# Description:
#   Script to set up the appropriate LilyPond and Mutopia environment variables
#   for Mutopia compilation.
#   It should be sourced rather than run.
#
# Options:
#   $1 - (optional) LilyPond version to use

# Can specify a specific version on the command line
if [ -n "$1" ]; then
   LILYPOND_VERSION=$1
   LILYPOND_BASE=/Applications/LilyPond/$LILYPOND_VERSION
else
   LILYPOND_VERSION=
   LILYPOND_BASE=/Applications/LilyPond
fi

export LILYPOND_VERSION
export LILYPOND_BASE
export LILYPOND_BIN=$LILYPOND_BASE/LilyPond.app/Contents/Resources/bin/lilypond
export CONVERT_LY_BIN=$LILYPOND_BASE/LilyPond.app/Contents/Resources/bin/convert-ly
export MUTOPIA_BASE=~/Mutopia
