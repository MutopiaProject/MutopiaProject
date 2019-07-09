%{
  ***********************************************************************
  *                                                                     *
  * score block for single-staff instruments                            *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"
\include "styles.ily"

\score {
  \keepWithTag #'printed        
 
 	\new Staff \with {
		\override RestCollision.positioning-done = #merge-rests-on-positioning
      }
 
       <<
 
            \set Staff.instrumentName = \thisInstrName  
            \thisClef           
            \condenseRests      
            \global             
            \theseNotes         
 
        >>
    \layout{ }
}