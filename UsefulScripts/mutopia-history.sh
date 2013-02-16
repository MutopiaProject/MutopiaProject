#!/bin/bash

# Filename:         mutopia-history.sh
# Original author:  Chris Sawer
#
# Description:
#   Script to generate .log files for part (or all) of the Mutopia archive.

for RDFNAME in `find . -name "*.rdf"`
do
   TITLE=$(basename "$RDFNAME" .rdf)
   LYFILE="${RDFNAME%.rdf}.ly"
   LYDIR="${RDFNAME%.rdf}-lys"
   LOGFILE="${RDFNAME%.rdf}.log"

   # Generate log file
   echo "Mutopia change history for $TITLE" > "$LOGFILE"
   echo "Note: only changes made since 2007-04-08 are listed" >> "$LOGFILE"
   echo "" >> "$LOGFILE"

   if [ -f "$LYFILE" ]; then
      echo "Found .ly: $LYFILE"
      git log --abbrev-commit --pretty=medium 9743e4379b2e12d0763b216e01abb92e2057853d..HEAD "$LYFILE" >> "$LOGFILE"
   elif [ -d "$LYDIR" ]; then
      echo "Found -lys dir: $LYDIR"
      git log --abbrev-commit --pretty=medium 9743e4379b2e12d0763b216e01abb92e2057853d..HEAD "$LYDIR" >> "$LOGFILE"
   else
      echo "WARNING: Unable to find .ly files for RDF: $RDFNAME"
   fi
done

