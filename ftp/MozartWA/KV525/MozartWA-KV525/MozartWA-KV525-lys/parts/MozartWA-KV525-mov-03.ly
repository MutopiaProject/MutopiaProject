%{
  *                                                    *
  * Generates 3rd movement                                                 *
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
    \thisTempoMovIII
    \hspace #0.4 \char ##x2014 \hspace #0.4
    \combinedPublicationName
  }
}
Part = " "

thisIdentifier = \thisIdentifierMovIII
thisTempo = \thisTempoMovIII
thisTocLabel = \label \thisLabelMovIII
\include "../03_allegretto/music.ily"
\bookpart { \include "../common/conductor-staff.ily" }

























