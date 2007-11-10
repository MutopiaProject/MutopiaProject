#!/bin/bash

# Filename:         mutopia-history.sh
# Original author:  Chris Sawer
# Subversion:       $Revision$
# Last changed:     $Date$
#
# Description:
#   Script to generate .log files for part (or all) of the Mutopia archive.

for RDFNAME in `find . -name "*.rdf"`
do
   TITLE=`basename "$RDFNAME" | sed 's/\.rdf$//'`
   LYFILE=`echo "$RDFNAME" | sed 's/\.rdf$/\.ly/'`
   LYDIR=`echo "$RDFNAME" | sed 's/\.rdf$/-lys/'`
   LOGFILE=`echo "$RDFNAME" | sed 's/\.rdf$/\.log/'`

   # Generate temporary log file
   if [ -f "$LYFILE" ]; then
      echo "Found .ly: $LYFILE"
      svn log --incremental -rHEAD:80 "$LYFILE" > "$LOGFILE.TEMP"
   elif [ -d "$LYDIR" ]; then
      echo "Found -lys dir: $LYDIR"
      svn log --incremental -rHEAD:80 "$LYDIR" > "$LOGFILE.TEMP"
   else
      echo "WARNING: Unable to find .ly files for RDF: $RDFNAME"
   fi

   # Create final log file if temporary file has non-zero length
   if [ -s "$LOGFILE.TEMP" ]; then
      echo "Mutopia change history for $TITLE" > "$LOGFILE"
      echo "Note: only changes made since 2007/Apr/08 are listed" >> "$LOGFILE"
      echo "" >> "$LOGFILE"
      cat "$LOGFILE.TEMP" >> "$LOGFILE"
   fi

   # Remove temporary logfile
   rm "$LOGFILE.TEMP"
done

