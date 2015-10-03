%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  * Parts : Keyboard                                                    *
  *                                                                     *
  * *******************************                                     *
  * *   Main file                 *                                     *
  * *******************************                                     *
  *                                                                     *
  ***********************************************************************
%}

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\include "common/version.ily"
\include "common/variables.ily"
\include "mutopia-header.ily"
\include "common/definitions.ily"
\include "common/parts-dimension.ily"

%--------Part-specific settings
thisInstrName = \thisInstrNameV     %----------- /common/variables.ily
Part = \thisInstrName               %------------[fixed for parts]

%---------------MOVEMENTS 
%------- -------First Mov: Allegro
\include "mov1/music.ily"
thisTempo = \thisTempoMovI   %----------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovI  %-------- /common/variables.ily
\bookpart { \include "common/parts-staff-keyboard.ily" }
%---------------Second Mov: Larghetto
\include "mov2/music.ily"
thisTempo = \thisTempoMovII  %----------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovII %-------- /common/variables.ily
\bookpart { \include "common/parts-staff-keyboard.ily" }
%--------------Third Mov: Allegro ma non tanto
\include "mov3/music.ily"
thisTempo = \thisTempoMovIII  %----------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovIII %-------- /common/variables.ily
\bookpart { \include "common/parts-staff-keyboard.ily" }

