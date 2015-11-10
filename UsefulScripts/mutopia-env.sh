#!/bin/bash

# Filename:         mutopia-env.sh
# Original author:  Chris Sawer
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
   LILYPOND_BASE=/mutopia/lilypond/$LILYPOND_VERSION/usr/bin
else
   LILYPOND_VERSION=
   #LILYPOND_BASE=/mutopia/lilypond/default/usr/bin
   LILYPOND_BASE=~/bin
fi

export LILYPOND_VERSION
export LILYPOND_BIN=$LILYPOND_BASE/lilypond
export CONVERT_LY_BIN=$LILYPOND_BASE/convert-ly
export MUTOPIA_BASE=/mutopia/MutopiaProject
