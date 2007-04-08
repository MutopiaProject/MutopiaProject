\version "2.7.29"
#(set-default-paper-size "letter")
\paper { #(set-paper-size "letter")
betweensystempadding = #1
raggedbottom=##f
raggedlastbottom=##f  }
\header { 
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus = "K. 191" 
instrument = "2nd Violin"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  } 
\include "violinII1.ly"
\include "violinII2.ly"
\include "violinII3.ly"

\book {
\score {   \violinIIa  }
\score {   \violinIIb  }
\score {   \violinIIc  } 
}