% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% MIDI file generation for II. Andante
% Main file, to be compiled directly.

#(ly:set-option 'relative-includes #t)
\include "../common/version.ily"
\include "../common/variables.ily"
\include "../common/definitions.ily"

\include "articulate.ly"

\include "../02_andante/music.ily"
\book { \include "../02_andante/midi.ily" }
