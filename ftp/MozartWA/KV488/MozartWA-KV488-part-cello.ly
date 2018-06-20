% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% Cello
% Main file, to be compiled directly.

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\include "common/version.ily"
\include "common/variables.ily"
\include "mutopia-header.ily"
\include "common/definitions.ily"
\include "common/parts-dimension.ily"

thisInstrName = \thisInstrNameIX
Part = \thisInstrName
thisClef = \thisClefInstrIX

% I. Allegro
\include "01_allegro/music.ily"
theseNotes = \cello
thisTempo = \thisTempoMovI
thisIdentifier = \thisIdentifierMovI
\bookpart { \include "common/parts-staff-single-instr.ily" }

% II. Andante
\include "02_andante/music.ily"
theseNotes = \cello
thisTempo = \thisTempoMovII
thisIdentifier = \thisIdentifierMovII
\bookpart { \include "common/parts-staff-single-instr.ily" }

% III. Presto
\include "03_presto/music.ily"
theseNotes = \cello
thisTempo = \thisTempoMovIII
thisIdentifier = \thisIdentifierMovIII
\bookpart { \include "common/parts-staff-single-instr.ily" }
