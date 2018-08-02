%{
  *                                                    *
  * Generates viola part                                                 *
  *                                                                     *
%}

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\include "../common/version.ily"
\include "../common/variables.ily"
\include "../common/mutopia-header.ily"
\include "../common/definitions.ily"
\include "../common/parts-dimension.ily"

%--------Part-specific settings
thisInstrName = \thisInstrNameIII  %----------- /common/variables.ily
Part = \thisInstrName            %------------[fixed for parts]
thisClef = \thisClefInstrIII       %----------- [manual entry]

%---------------MOVEMENTS 
%---------------First Mov: Allegro
\include "../01_allegro/music.ily"
theseNotes = \viola      %--------------- /mov_/music.ily
thisTempo = \thisTempoMovI  %--------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
\bookpart { \include "../common/parts-staff-single-instr.ily" }

%---------------Second Mov: Andante
\include "../02_andante/music.ily"
theseNotes = \viola        %--------------- /mov_/music.ily
thisTempo = \thisTempoMovII  %-------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovII %----- /common/variables.ily
\bookpart { \include "../common/parts-staff-single-instr.ily" }

%--------------Third Mov: Allegretto
\include "../03_allegretto/music.ily"
theseNotes = \viola       %--------------- /mov_/music.ily
thisTempo = \thisTempoMovIII  %------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovIII %---- /common/variables.ily
\bookpart { \include "../common/parts-staff-single-instr.ily" }

%--------------Fourth Mov: Allegro
\include "../04_allegro//music.ily"
theseNotes = \viola        %--------------- /mov_/music.ily
thisTempo = \thisTempoMovIV  %------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovIV %---- /common/variables.ily
\bookpart { \include "../common/parts-staff-single-instr.ily" }



























