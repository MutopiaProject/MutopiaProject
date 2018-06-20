% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% Piano
% Main file, to be compiled directly.

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\include "common/version.ily"
\include "common/variables.ily"
\include "mutopia-header.ily"
\include "common/definitions.ily"
\include "common/parts-dimension.ily"

thisInstrName = \thisInstrNameV
Part = \thisInstrName

% I. Allegro
\include "01_allegro/music.ily"
thisTempo = \thisTempoMovI
thisIdentifier = \thisIdentifierMovI
\bookpart { \include "common/parts-staff-piano.ily" }

% II. Andante
\include "02_andante/music.ily"
thisTempo = \thisTempoMovII
thisIdentifier = \thisIdentifierMovII
\bookpart { \include "common/parts-staff-piano.ily" }

% III. Presto
\include "03_presto/music.ily"
thisTempo = \thisTempoMovIII
thisIdentifier = \thisIdentifierMovIII
\bookpart { \include "common/parts-staff-piano.ily" }
