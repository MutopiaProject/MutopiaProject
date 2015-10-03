%{
  ***********************************************************************
  *                                                                     *
  * Variables, to be included at the top of all files                   *
  * Variables, à inclure en tête de tous les fichiers                   *
  *                                                                     *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"

%%------------------Work-specific variables
thisComposer = "Johann Sebastian Bach"
thisWork = "Keyboard Concerto Nº 4"
thisOrchester = "for keyboard, strings, and continuo"
thisOpus = "BWV 1055"
thisTonality = "in A major"
thisStyle = "Baroque"
thisDates = "1685-1750"
thisDateOfPublication = "1854"
thisSource = "Bach-Gesellschaft Ausgabe; Breitkopf and Härtel, 1869"
thisBigTitle = "Bach - Keyboard Concerto Nº 4 in A major"

combinedPublicationName = "Conductor's Score"

%%----------------Movement-specific variables
thisTempoMovI = "Allegro"
thisTempoMovII = "Larghetto"
thisTempoMovIII = "Allegro ma non tanto"

thisIdentifierMovI = "I"
thisIdentifierMovII = "II"
thisIdentifierMovIII = "III"

thisLabelMovI = #'MvmtI
thisLabelMovII = #'MvmtII
thisLabelMovIII = #'MvmtIII

thisFilenameMovI = "bwv1055-1-allegro"
thisFilenameMovII = "bwv1055-2-larghetto"
thisFilenameMovIII = "bwv1055-3-allegro-manontanto"

%%----------------Instrument-specific variables
thisInstrNameI = "Violin I"
thisInstrNameII = "Violin II"
thisInstrNameIII = "Viola"
thisInstrNameIV = "Continuo"
thisInstrNameV = "Keyboard"

   %------------------set clefs for single-staff parts
thisClefInstrI = \clef treble
thisClefInstrII = \clef treble
thisClefInstrIII = \clef alto
thisClefInstrIV = \clef bass
thisClefInstrVu = \clef treble
thisClefInstrVd = \clef bass



