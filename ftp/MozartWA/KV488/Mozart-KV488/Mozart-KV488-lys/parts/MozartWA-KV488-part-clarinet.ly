% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% Clarinet in A
% Main file, to be compiled directly.

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\include "../common/version.ily"
\include "../common/variables.ily"
\include "../mutopia-header.ily"
\include "../common/definitions.ily"
\include "../common/parts-dimension.ily"

thisInstrName = \thisInstrNameII
Part = \thisInstrName
thisClef = \thisClefInstrII

% I. Allegro
\include "../01_allegro/global.ily"
\include "../01_allegro/clarinet.ily"
theseNotes = \clarinet
thisTempo = \thisTempoMovI
thisIdentifier = \thisIdentifierMovI
\bookpart { \include "../common/parts-staff-single-instr-in-a.ily" }

% II. Andante
\include "../02_andante/global.ily"
\include "../02_andante/clarinet.ily"
theseNotes = \clarinet
thisTempo = \thisTempoMovII
thisIdentifier = \thisIdentifierMovII
\bookpart { \include "../common/parts-staff-single-instr-in-a.ily" }

% III. Presto
\include "../03_presto/global.ily"
\include "../03_presto/clarinet.ily"
theseNotes = \clarinet
thisTempo = \thisTempoMovIII
thisIdentifier = \thisIdentifierMovIII
\bookpart { \include "../common/parts-staff-single-instr-in-a.ily" }
