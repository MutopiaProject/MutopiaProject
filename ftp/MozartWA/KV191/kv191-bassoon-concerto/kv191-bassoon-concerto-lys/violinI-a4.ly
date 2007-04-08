\version "2.7.29"
#(set-default-paper-size "a4")
\paper { #(set-paper-size "a4")
betweensystempadding = #1
raggedbottom=##f
raggedlastbottom=##f  }
\header { 
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus = "K. 191" 
instrument = "1st Violin"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  } 
\include "violinI1.ly"
\include "violinI2.ly"
\include "violinI3.ly"

\book {
\score {   \violinIa  }
\score {   \violinIb  }
\score {   \violinIc  } 
}