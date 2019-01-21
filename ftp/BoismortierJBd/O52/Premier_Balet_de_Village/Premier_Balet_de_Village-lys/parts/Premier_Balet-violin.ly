%{
  *                          
  * Generates violin part
  *                                                                     
%}

#(ly:set-option 'relative-includes #t)

\version "2.18.2"
\include "../common/variables.ily"
\include "../common/mutopia-header.ily"
\include "../common/definitions.ily"
\include "../common/parts-dimension.ily"

%--------Part-specific settings
thisInstrName = \thisInstrNameII 
Part = \thisInstrName             
thisClef = \thisClefInstrII       

 
%---------------First Mov
\include "../01/music.ily"
theseNotes = \violin        
thisTempo = \thisTempoMovI  
thisIdentifier = \thisIdentifierMovI 
\bookpart { \include "../common/parts-staff-single-instr.ily" }

%---------------Second Mov
\include "../02/music.ily"
theseNotes = \violin         
thisTempo = \thisTempoMovII  
thisIdentifier = \thisIdentifierMovII 
\bookpart { \include "../common/parts-staff-single-instr.ily" }

%--------------Third Mov
\include "../03/music.ily"
theseNotes = \violin      
thisTempo = \thisTempoMovIII  
thisIdentifier = \thisIdentifierMovIII 
\bookpart { \include "../common/parts-staff-single-instr.ily" }
