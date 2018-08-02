%{
  *                                                    *
  * Generates 4th movement                                                 *
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
    \thisTempoMovIV
    \hspace #0.4 \char ##x2014 \hspace #0.4
    \combinedPublicationName
  }
}
Part = " "

thisIdentifier = \thisIdentifierMovIV
thisTempo = \thisTempoMovIV
thisTocLabel = \label \thisLabelMovIV
\include "../04_allegro/music.ily"
\bookpart { \include "../common/conductor-staff.ily" }

























