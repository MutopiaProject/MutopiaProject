#!/bin/bash

# Filename:         mutopia-combine.sh
# Original author:  Chris Sawer
# Subversion:       $Revision$
# Last changed:     $Date$
#
# Description:
#   Script to combine together multiple .ly/.mid/.pdf/.ps.gz files into the
#   appropriate zip files for Mutopia and create .rdf file. Checks all necessary
#   files are present.
#   Note that if there are multiple .ly files, they should already be in the
#   $BASE_NAME-lys directory.
#
# Options:
#   $1 - "base name" of the piece
#   $2 - (optional) .ly file containing header information

# Print usage if no parameters given
if [ ! -n "$1" ]; then
    echo "Usage: $0 <base name> [<header file>]"
    exit 1
fi

# Set up variables
BASE_NAME=$1
if [ ! -n "$2" ]; then
   HEADER_FILE="$BASE_NAME".ly
else
   HEADER_FILE=$2
fi
A4_PDF_COUNT=`ls *-a4.pdf 2>/dev/null | wc -l`
A4_PS_COUNT=`ls *-a4.ps.gz 2>/dev/null | wc -l`
LET_PDF_COUNT=`ls *-let.pdf 2>/dev/null | wc -l`
LET_PS_COUNT=`ls *-let.ps.gz 2>/dev/null | wc -l`
MID_COUNT=`ls *.mid 2>/dev/null | wc -l`
ZIP_COUNT=`ls *.zip 2>/dev/null | wc -l`

# Check directory is clean
if [ $ZIP_COUNT -gt 0 ] || [ -f "$BASE_NAME".rdf ]; then
   echo "Directory is not clean: aborting"
   exit 1
fi

# Check files all exist
if [ ! -r "$HEADER_FILE" ] || \
   ( [ ! -d "$BASE_NAME"-lys ] && [ ! -f "$BASE_NAME".ly ] ); then
   echo "Unable to find .ly files: aborting"
   exit 1
fi

if [ $A4_PDF_COUNT -lt 1 ] || [ $A4_PS_COUNT -lt 1 ] || \
   [ $LET_PDF_COUNT -lt 1 ] || [ $LET_PS_COUNT -lt 1 ]; then
   echo "Unable to find all .pdf/.ps.gz files: aborting"
   exit 1
fi

if [ $MID_COUNT -lt 1 ]; then
   echo "Unable to find .mid files: aborting"
   exit 1
fi

if [ ! -r "$BASE_NAME"-preview.png ]; then
   echo "Unable to find preview image: aborting"
   exit 1
fi

# Create zip files as appropriate
if [ -d "$BASE_NAME"-lys ]; then
   zip -r "$BASE_NAME"-lys.zip "$BASE_NAME"-lys -x "*.svn*"
fi

if [ $A4_PDF_COUNT -gt 1 ]; then
   gunzip *-a4.ps.gz
   gunzip *-let.ps.gz
   zip "$BASE_NAME"-a4-pdfs.zip *-a4.pdf
   zip "$BASE_NAME"-a4-pss.zip *-a4.ps
   zip "$BASE_NAME"-let-pdfs.zip *-let.pdf
   zip "$BASE_NAME"-let-pss.zip *-let.ps
   rm *-a4.pdf *-a4.ps *-let.pdf *-let.ps
fi

if [ $MID_COUNT -gt 1 ]; then
   zip "$BASE_NAME"-mids.zip *.mid
   rm *.mid
fi

# Create RDF (using copy of header file if necessary)
if [ -d "$BASE_NAME"-lys ]; then
   cp "$HEADER_FILE" "$BASE_NAME".ly
   java Mutopia -r "$BASE_NAME".ly
   rm "$BASE_NAME".ly
else
   java Mutopia -r "$BASE_NAME".ly
fi

