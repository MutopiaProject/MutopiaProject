% Variables, to be included at the top of all files
% Do not compile

\include "version.ily"

%% Work-specific variables
thisComposer = "Wolfgang Amadeus Mozart"
thisWork = "Piano Concerto № 23"
thisOrchester = "for piano and orchestra"
thisOpus = "KV 488"
thisTonality = "in A major"
thisStyle = "Classical"
thisDates = \markup {
  \concat {
    "1756"
    \hspace #0.2 \char ##x2013 \hspace #-0.4
    "1791"
  }
}
thisDateOfPublication = "1800"
thisSource = "Wolfgang Amadeus Mozart’s Werke; Breitkopf and Härtel, 1879"

thisBigTitle = \markup {
  \concat {
    "Mozart"
    \hspace #0.4 \char ##x2014 \hspace #0.4
    "Piano Concerto № 23 in A major"
  }
}

combinedPublicationName = "Conductor’s Score"

%% Movement-specific variables
thisTempoMovI = "Allegro"
thisTempoMovII = "Andante"
thisTempoMovIII = "Presto (under construction)"

thisIdentifierMovI = "I"
thisIdentifierMovII = "II"
thisIdentifierMovIII = "III"

thisLabelMovI = #'MvmtI
thisLabelMovII = #'MvmtII
thisLabelMovIII = #'MvmtIII

thisFilenameMovI = "kv488-1-allegro"
thisFilenameMovII = "kv488-2-andante"
thisFilenameMovIII = "kv488-3-presto"

%% Instrument-specific variables
thisInstrNameI = "Flute"
thisInstrNameII = "Clarinet in A"
thisInstrNameIII = "Bassoon"
thisInstrNameIV = "French Horn in A"
thisInstrNameV = "Piano"
thisInstrNameVI = "Violin I"
thisInstrNameVII = "Violin II"
thisInstrNameVIII = "Viola"
thisInstrNameIX = "Cello and Bass"

thisClefInstrI = \clef treble
thisClefInstrII = \clef treble
thisClefInstrIII = \clef bass
thisClefInstrIV = \clef treble
thisClefInstrVu = \clef treble
thisClefInstrVd = \clef bass
thisClefInstrVI = \clef treble
thisClefInstrVII = \clef treble
thisClefInstrVIII = \clef alto
thisClefInstrIX = \clef bass
