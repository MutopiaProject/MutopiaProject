#!/bin/bash

if [ ! -n "$2" ] ; then
    echo "Usage: $0 <base name> <header file>"
    exit 1
fi

BASE_NAME=$1
HEADER_FILE=$2
LY_FILES="*.ly *.lyi *.ily *.txt"
LY_COUNT=`ls $LY_FILES | wc -l`
PDF_COUNT=`ls *-a4.pdf | wc -l`
MID_COUNT=`ls *.mid | wc -l`

# Create zip files as appropriate
if [ $PDF_COUNT -gt 1 ] ; then
   gunzip *-a4.ps.gz
   gunzip *-let.ps.gz
   zip "$BASE_NAME"-a4-pdfs.zip *-a4.pdf
   zip "$BASE_NAME"-a4-pss.zip *-a4.ps
   zip "$BASE_NAME"-let-pdfs.zip *-let.pdf
   zip "$BASE_NAME"-let-pss.zip *-let.ps
   rm *-a4.pdf *-a4.ps *-let.pdf *-let.ps
fi

if [ $LY_COUNT -gt 1 ] ; then
   # Backup header file
   cp "$HEADER_FILE" "$BASE_NAME".ly2

   zip "$BASE_NAME"-lys.zip $LY_FILES
   rm $LY_FILES

   # Rename header file
   mv "$BASE_NAME".ly2 "$BASE_NAME".ly
fi

if [ $MID_COUNT -gt 1 ] ; then
   zip "$BASE_NAME"-mids.zip *.mid
   rm *.mid
fi

# Create RDF
java Mutopia -r "$BASE_NAME".ly

# Remove header file if appropriate
if [ $LY_COUNT -gt 1 ] ; then
   rm "$BASE_NAME".ly
fi

