\version "2.19.15"
\include "trumpet.ly"
\include "trumpet2.ly"

\score {
<<
  \new Staff 	\partcombine 
	  \trumpetI
	  \TrumpetIInotes

  >>



	%{
  <<
  \new Staff { 
	  << {\trumpetI}
	  \\
	  {\TrumpetIInotes}>>
  }
  >>
	%}
  
  
  
  
}
