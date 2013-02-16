#!/bin/bash

# Filename:         mutopia-compile.sh
# Original author:  Chris Sawer
#
# Description:
#   Script to compile .ly files into .mid/.pdf/.ps.gz files.
#   Note that if there are multiple .ly files, they should already be in the
#   $BASE_NAME-lys directory.
#
# Options:
#   $1 - Switch to use, comprising:
#        -l - Use landscape hack
#        -s - Separate A4 and Letter versions (-a4.ly [specified] and -let.ly)
#   $@ - File names to process

#############
# Functions #
#############

# f_compile_a4 - Compile A4 version of .ly file (and preview images)
f_compile_a4() {
   $LILYPOND_BIN $PREVIEW $PS_AND_PDF -dno-include-book-title-preview -dresolution=72 -dno-point-and-click -dpaper-size=\"a4\" "$LY_BASE_NAME.ly"
   mv "$LY_BASE_NAME.ps" "$TARGET_BASE_NAME-a4.ps"
   mv "$LY_BASE_NAME.pdf" "$TARGET_BASE_NAME-a4.pdf"
   mv "$LY_BASE_NAME.preview.png" "$TARGET_BASE_NAME-preview.png"
   rm -f "$LY_BASE_NAME.preview.eps" "$LY_BASE_NAME.preview.pdf"
   rm -f "$LY_BASE_NAME.midi" # TODO this doesn't work well in connection with the landscape hack
   gzip "$TARGET_BASE_NAME-a4.ps"
}

# f_compile_let - Compile Letter version of .ly file (and fix .midi -> .mid)
f_compile_let() {
   $LILYPOND_BIN $PS_AND_PDF -dno-point-and-click -dpaper-size=\"letter\" "$LY_BASE_NAME.ly"
   mv "$LY_BASE_NAME.ps" "$TARGET_BASE_NAME-let.ps"
   mv "$LY_BASE_NAME.pdf" "$TARGET_BASE_NAME-let.pdf"
   mv "$LY_BASE_NAME.midi" "$TARGET_BASE_NAME.midi" # TODO see comment above
   gzip "$TARGET_BASE_NAME-let.ps"

   for t in *.midi; do mv "$t" "`echo \"$t\" |sed 's/.midi$/.mid/'`"; done
}

########################
# Start of main script #
########################

# Check environment variables are set up
if [ -z "$LILYPOND_BIN" ]; then
   echo "LILYPOND_BIN environment variables must be set"
   exit 1
fi

# Check .ly file has been specified
if [ -z "$1" ] ; then
   echo "Usage: $0 sourcefile.ly"
   exit 1
fi

# LilyPond version specific fixes
# Note - these will need to be updated as the default version changes
# Currently assumed default version: 2.14
if [[ $LILYPOND_VERSION = 2\.12 ]] || [[ $LILYPOND_VERSION = 2\.12\.? ]] || [[ $LILYPOND_VERSION = 2\.12\.?? ]]; then
   PS_AND_PDF=
else
   # NB. This changed with 2.13.4
   PS_AND_PDF="--ps --pdf"
fi

if [[ $LILYPOND_VERSION = 2\.10 ]] || [[ $LILYPOND_VERSION = 2\.10\.? ]] || [[ $LILYPOND_VERSION = 2\.10\.?? ]]; then
   # NB. This changed mid-way through 2.11
   PREVIEW=--preview;
else
   PREVIEW=-dpreview;
fi

# Switch on landscape hack if necessary
if [ "$1" = "-l" ]; then
   LANDSCAPE_HACK=1
   shift
else
   LANDSCAPE_HACK=0
fi

# Compile separately if necessary
if [ "$1" = "-s" ]; then
   COMPILE_SEPARATELY=1
   shift
else
   COMPILE_SEPARATELY=0
fi

# Run .ly files through LilyPond
for parameter in "$@"
do
   filename="`basename \"$parameter\"`"
   dirname="`dirname \"$parameter\"`"
   LY_BASE_NAME="`echo \"$filename\" |sed 's/\.ly$//'`"
   TARGET_BASE_NAME="$LY_BASE_NAME"
   [ ! "$LY_BASE_NAME.ly" = "$filename" ] && echo "Error: name must end .ly" && exit 1

   cd "$dirname"

   if [ "$LANDSCAPE_HACK" = 1 ]; then
      # Compile separate A4 and Letter files (created using hack)
      LY_BASE_NAME="$TARGET_BASE_NAME-a4"
      sed -e 's/set-default-paper-size "letter"/set-default-paper-size "a4"/g' < "$TARGET_BASE_NAME.ly" | sed -e 's/set-paper-size "letter"/set-paper-size "a4"/g' > "$LY_BASE_NAME.ly"
      f_compile_a4
      rm -f "$LY_BASE_NAME.ly"

      LY_BASE_NAME="$TARGET_BASE_NAME-let"
      sed -e 's/set-default-paper-size "a4"/set-default-paper-size "letter"/g' < "$TARGET_BASE_NAME.ly" | sed -e 's/set-paper-size "a4"/set-paper-size "letter"/g' > "$LY_BASE_NAME.ly"
      f_compile_let
      rm -f "$LY_BASE_NAME.ly"
   elif [ "$COMPILE_SEPARATELY" = 1 ]; then
      # Compile separate A4 and Letter files
      TARGET_BASE_NAME="`echo \"$LY_BASE_NAME\" |sed 's/-a4$//'`"
      [ ! "$TARGET_BASE_NAME-a4.ly" = "$filename" ] && echo "Error: for separate compilation, name must end -a4.ly" && exit 1
      f_compile_a4
      LY_BASE_NAME="$TARGET_BASE_NAME-let"
      f_compile_let
   else
      # Standard compilation
      f_compile_a4
      f_compile_let
   fi

   cd -
done
