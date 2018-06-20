% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% MIDI file generation
% Main file, to be compiled directly.

#(ly:set-option 'relative-includes #t)
\include "common/version.ily"
\include "common/variables.ily"
\include "common/definitions.ily"

% I. Allegro
\include "01_allegro/music.ily"
\book {
  \bookOutputName \thisFilenameMovI
  \include "01_allegro/midi.ily"
}

% II. Andante
\include "02_andante/music.ily"
\book {
  \bookOutputName \thisFilenameMovII
  \include "02_andante/midi.ily"
}

% III. Presto
\include "03_presto/music.ily"
\book {
  \bookOutputName \thisFilenameMovIII
  \include "03_presto/midi.ily"
}
