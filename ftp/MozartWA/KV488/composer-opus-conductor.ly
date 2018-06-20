%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  * Conductor's score                                                   *
  *                                                                     *
  * *******************************                                     *
  * *   Main file                 *                                     *
  * *******************************                                     *
  *                                                                     *
  * SETUP: Copy movement block for each movement.                       *
  *        Adjust movement-specific variables                           *
  *        and music folder accordingly.                                *
  *                                                                     *
  ***********************************************************************
%}

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\include "common/version.ily"
\include "mutopia-header.ily"
\include "common/variables.ily"
\include "common/definitions.ily"
\include "common/conductor-dimension.ily"
\include "common/conductor-cover.ily"

%--------Part-specific settings
thisInstrName = \combinedPublicationName            %----------- /common/variables.ily
Part = " "                                          %----------- [blank for conductor]

%---------------- Cover
\bookpart { \CoverA }   %--------------------------------------- /common/conductor-cover.ily
  
%---------------- Table of Contents
\bookpart {
  \header { copyright = ##f }
  \paper  { two-sided = ##f print-page-number = ##f }
  \PageToc              %--------------------------------------- /common/conductor-cover.ily
}

%--------- MOVEMENTS 
%--------------- First Mov: Allegro
thisIdentifier = \thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovI          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovI   %---------------------- /common/variables.ily [set to corresponding movement]
\include "mov1/music.ily"                %---------------------- [set to corresponding movement folder]
\bookpart { \include "common/conductor-staff.ily" }

%--------------- Second Mov: Larghetto
thisIdentifier = \thisIdentifierMovII
thisTempo =      \thisTempoMovII
thisTocLabel =   \label \thisLabelMovII
\include "mov2/music.ily"
\bookpart { \include "common/conductor-staff.ily" }

%-------------- Third Mov: Allegro ma non tanto
thisIdentifier = \thisIdentifierMovIII
thisTempo =      \thisTempoMovIII
thisTocLabel =   \label \thisLabelMovIII
\include "mov3/music.ily"
\bookpart { \include "common/conductor-staff.ily" }
