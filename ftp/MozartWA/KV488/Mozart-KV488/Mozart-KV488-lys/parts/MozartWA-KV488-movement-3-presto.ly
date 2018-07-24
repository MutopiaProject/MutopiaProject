% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% Conductor's score for III. Presto
% Main file, to be compiled directly.

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\include "../common/version.ily"
\include "../mutopia-header.ily"
\include "../common/variables.ily"
\include "../common/definitions.ily"
\include "../common/conductor-dimension.ily"

% Part-specific settings
thisInstrName = \markup {
  \concat {
    \thisTempoMovIII
    \hspace #0.4 \char ##x2014 \hspace #0.4
    \combinedPublicationName
  }
}
Part = " "

thisIdentifier = \thisIdentifierMovIII
thisTempo = \thisTempoMovIII
thisTocLabel = \label \thisLabelMovIII
\include "../03_presto/music.ily"
\bookpart { \include "../common/conductor-staff.ily" }
