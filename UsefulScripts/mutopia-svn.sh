#!/bin/bash

# Filename:         mutopia-svn.sh
# Original author:  Chris Sawer
#
# Description:
#   Quick script to add the current directory and any .ly files it contains to
#   subversion (doesn't commit).

MUSICPATH="$PWD"
MUSICDIR="`basename $MUSICPATH`"
PARENTPATH="`dirname $MUSICPATH`"
PARENTDIR="`basename $PARENTPATH`"
GRANDPARENTPATH="`dirname $PARENTPATH`"

if [ ! -d ".svn" ]; then
   # Current directory is not in subversion
   if [ ! -d "../.svn" ]; then
      # Parent directory is not in subversion
      cd "$GRANDPARENTPATH"
      echo "Adding directory $PARENTDIR to subversion"
      svn add -N "$PARENTDIR"
   fi

   cd "$PARENTPATH"
   echo "Adding directory $MUSICDIR to subversion and setting svn:ignore"
   svn add -N "$MUSICDIR"
   svn propset svn:ignore -F $MUTOPIA_BASE/UsefulScripts/svn-ignore "$MUSICDIR"

   cd "$MUSICPATH"
fi

# Add .ly file if there is one
if [ `ls *.ly 2>/dev/null | wc -l` -eq 1 ]; then
   echo "One .ly file found - adding to subversion"
   svn add *.ly
fi

# Add .ly directory if there is one
if [ `ls -d *-lys 2>/dev/null | wc -l` -eq 1 ]; then
   echo "One -lys directory found - adding to subversion"
   svn add *-lys
fi
