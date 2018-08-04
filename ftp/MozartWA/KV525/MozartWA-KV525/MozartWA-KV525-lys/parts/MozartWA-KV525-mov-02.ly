%{
  *                                                    *
  * Generates 2nd movement                                                 *
  *                                                                     *
%}

#(ly:set-option 'relative-includes #t)
\include "../common/version.ily"
\include "../common/mutopia-header.ily"
\include "../common/variables.ily"
\include "../common/definitions.ily"
\include "../common/conductor-dimension.ily"

% Part-specific settings
thisInstrName = \markup {
  \concat {
    \thisTempoMovII
    \hspace #0.4 \char ##x2014 \hspace #0.4
    \combinedPublicationName
  }
}
Part = " "

thisIdentifier = \thisIdentifierMovII
thisTempo = \thisTempoMovII
thisTocLabel = \label \thisLabelMovII
\include "../02_andante/music.ily"
\bookpart { \include "../common/conductor-staff.ily" }
























