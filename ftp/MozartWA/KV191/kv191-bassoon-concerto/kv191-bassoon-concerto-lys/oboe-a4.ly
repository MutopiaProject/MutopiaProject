\version "2.7.29"
#(set-default-paper-size "a4") 
\paper { 
#(set-paper-size "a4") 
betweensystempadding = #1 
raggedbottom=##f
raggedlastbottom=##f  }
\header { 
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus = "K. 191" 
instrument = "Oboe"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  } 

\include "oboe1.ly"
\include "oboe2.ly"
\include "oboe3.ly"

\book {
\score {   \oboea  }
\score {   \oboeb  }
\score {   \oboec  } 
}