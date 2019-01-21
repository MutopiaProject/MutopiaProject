#(ly:set-option 'relative-includes #t)

\version "2.18.2"
\include "common/mutopia-header.ily"
\include "common/variables.ily"
\include "common/definitions.ily"
\include "common/conductor-dimension.ily"
\include "common/conductor-cover.ily"
thisInstrName = \combinedPublicationName
Part = " "

\bookpart { \CoverA }

thisIdentifier = \thisIdentifierMovI
thisTempo =      \thisTempoMovI
thisTocLabel =   \label \thisLabelMovI
\include "01/music.ily"
\bookpart { \include "common/conductor-staff.ily" }

thisIdentifier = \thisIdentifierMovII
thisTempo =      \thisTempoMovII
thisTocLabel =   \label \thisLabelMovII
\include "02/music.ily"
\bookpart { \include "common/conductor-staff.ily" }

thisIdentifier = \thisIdentifierMovIII
thisTempo =      \thisTempoMovIII
thisTocLabel =   \label \thisLabelMovIII
\include "03/music.ily"
\bookpart { \include "common/conductor-staff.ily" }

