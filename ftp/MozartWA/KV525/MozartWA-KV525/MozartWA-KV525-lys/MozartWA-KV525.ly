%{
  *                                                    *
  * Generates full score                                                 *
  *                                                                     *
%}
#(ly:set-option 'relative-includes #t)
\include "common/version.ily"
\include "common/mutopia-header.ily"
\include "common/variables.ily"
\include "common/definitions.ily"
\include "common/conductor-dimension.ily"
\include "common/conductor-cover.ily"

thisInstrName = \combinedPublicationName            %----------- /common/variables.ily
Part = " " %----------- [blank for conductor]

\bookpart { \CoverA } 
%--------------- First Mov: Allegro
thisIdentifier = \thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovI          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovI   %---------------------- /common/variables.ily [set to corresponding movement]
\include "01_allegro/music.ily"                %---------------------- [set to corresponding movement folder]
\bookpart { \include "common/conductor-staff.ily" }


%--------------- Second Mov: Andante
thisIdentifier = \thisIdentifierMovII     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovII          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovII   %---------------------- /common/variables.ily [set to corresponding movement]
\include "02_andante/music.ily"                %---------------------- [set to corresponding movement folder]
\bookpart {  \include "common/conductor-staff.ily" }


%--------------- third Mov: Allegretto
thisIdentifier = \thisIdentifierMovIII     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovIII          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovIII   %---------------------- /common/variables.ily [set to corresponding movement]
\include "03_allegretto/music.ily"                %---------------------- [set to corresponding movement folder]
\bookpart { \include "common/conductor-staff.ily" }



%--------------- Fourth Mov: Allegro
thisIdentifier = \thisIdentifierMovIV     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovIV          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovIV   %---------------------- /common/variables.ily [set to corresponding movement]
\include "04_allegro/music.ily"                %---------------------- [set to corresponding movement folder]
\bookpart { \include "common/conductor-staff.ily" }









