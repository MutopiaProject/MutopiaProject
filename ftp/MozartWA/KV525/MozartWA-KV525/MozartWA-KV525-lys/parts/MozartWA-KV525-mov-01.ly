%{
  *                                                    *
  * Generates 1st movement                                                 *
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
    \thisTempoMovI
    \hspace #0.4 \char ##x2014 \hspace #0.4
    \combinedPublicationName
  }
}
Part = " "

thisIdentifier = \thisIdentifierMovI
thisTempo = \thisTempoMovI
thisTocLabel = \label \thisLabelMovI
\include "../01_allegro/music.ily"
\bookpart { \include "../common/conductor-staff.ily" }























