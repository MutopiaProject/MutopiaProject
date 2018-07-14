% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% Conductor's score
% Main file, to be compiled directly.

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\include "common/version.ily"
\include "mutopia-header.ily"
\include "common/variables.ily"
\include "common/definitions.ily"
\include "common/conductor-dimension.ily"
\include "common/conductor-cover.ily"

% Part-specific settings
thisInstrName = \combinedPublicationName
Part = " "

% Cover
\bookpart { \CoverA }

% Table of Contents
\bookpart {
  \header { copyright = ##f }
  \paper { two-sided = ##f print-page-number = ##f }
  \PageToc
}

% I. Allegro
thisIdentifier = \thisIdentifierMovI
thisTempo = \thisTempoMovI
thisTocLabel = \label \thisLabelMovI
\include "01_allegro/music.ily"
\bookpart { \include "common/conductor-staff.ily" }

% II. Andante
thisIdentifier = \thisIdentifierMovII
thisTempo = \thisTempoMovII
thisTocLabel = \label \thisLabelMovII
\include "02_andante/music.ily"
\bookpart { \include "common/conductor-staff.ily" }

% III. Presto
thisIdentifier = \thisIdentifierMovIII
thisTempo = \thisTempoMovIII
thisTocLabel = \label \thisLabelMovIII
\include "03_presto/music.ily"
\bookpart { \include "common/conductor-staff.ily" }
