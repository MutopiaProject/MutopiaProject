%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  * Parts : Continuo                                                    *
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
thisInstrName = \thisInstrNameIV   %----------- /common/variables.ily
Part = \thisInstrName              %------------[fixed for parts]
thisClef = \thisClefInstrIV        %----------- [manual entry]

%---------------MOVEMENTS 
%------- -------First Mov: Allegro
\include "mov1/music.ily"
theseNotes = \continuo      %----------------- /mov_/music.ily
thisTempo = \thisTempoMovI  %----------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovI %-------- /common/variables.ily
\bookpart { \include "common/parts-staff-single-instr.ily" }
%---------------Second Mov: Larghetto
\include "mov2/music.ily"
theseNotes = \continuo      %----------------- /mov_/music.ily
thisTempo = \thisTempoMovII  %---------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovII %------- /common/variables.ily
\bookpart { \include "common/parts-staff-single-instr.ily" }
%--------------Third Mov: Allegro ma non tanto
\include "mov3/music.ily"
theseNotes = \continuo      %----------------- /mov_/music.ily
thisTempo = \thisTempoMovIII  %-------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovIII %----- /common/variables.ily
\bookpart { \include "common/parts-staff-single-instr.ily" }