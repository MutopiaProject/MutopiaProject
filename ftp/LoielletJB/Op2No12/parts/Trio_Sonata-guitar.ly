%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  * Parts : Violin                                                  *
  *                                                                     *
  * *******************************                                     *
  * *   Main file                 *                                     *
  * *******************************                                     *
  *                                                                     *
  ***********************************************************************
%}

#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\version "2.18.2"
%\include "../common/version.ily"
\include "../common/variables.ily"
\include "../common/mutopia-header.ily"
\include "../common/definitions.ily"
\include "../common/parts-dimension.ily"

%--------Part-specific settings
thisInstrName = \thisInstrNameIII  %----------- /common/variables.ily
Part = \thisInstrName             %------------[fixed for parts]
thisClef = \thisClefInstrIII       %----------- [manual entry]

%---------------MOVEMENTS 
%---------------First Mov
\include "../01/music.ily"
theseNotes = \guitar        %--------------- /mov_/music.ily
thisTempo = \thisTempoMovI  %--------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
%\include "../common/parts-staff-single-instr-NON-MU.ily"
\bookpart {\include "../common/parts-staff-single-instr.ily"}
%---------------Second Mov
\include "../02/music.ily"
theseNotes = \guitar         %--------------- /mov_/music.ily
thisTempo = \thisTempoMovII  %-------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovII %----- /common/variables.ily
\bookpart {\include "../common/parts-staff-single-instr.ily"}

%--------------Third Mov
\include "../03/music.ily"
theseNotes = \guitar      %--------------- /mov_/music.ily
thisTempo = \thisTempoMovIII  %------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovIII %---- /common/variables.ily
\bookpart {\include "../common/parts-staff-single-instr.ily"}

%--------------Fourth Mov
\include "../04/music.ily"
theseNotes = \guitar     %--------------- /mov_/music.ily
thisTempo = \thisTempoMovIV  %------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovIV %---- /common/variables.ily
\bookpart {\include "../common/parts-staff-single-instr.ily"}