% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% MIDI file generation for I. Allegro
% Main file, to be compiled directly.

#(ly:set-option 'relative-includes #t)
\include "../common/version.ily"
\include "../common/variables.ily"
\include "../common/definitions.ily"

\include "articulate.ly"

\include "../01_allegro/music.ily"
\book { \include "../01_allegro/midi.ily" }
