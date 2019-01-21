%{
  *                          
  * Generates third movement
  *                                                                     
%}

#(ly:set-option 'relative-includes #t)

\version "2.18.2"
\include "../common/mutopia-header.ily"
\include "../common/variables.ily"
\include "../common/definitions.ily"
\include "../common/conductor-dimension.ily"
\include "../common/conductor-cover.ily"
thisInstrName = \combinedPublicationName
Part = " "

thisIdentifier = \thisIdentifierMovIII
thisTempo =      \thisTempoMovIII
thisTocLabel =   \label \thisLabelMovIII
\include "../03/music.ily"
\bookpart { \include "../common/conductor-staff.ily" }

