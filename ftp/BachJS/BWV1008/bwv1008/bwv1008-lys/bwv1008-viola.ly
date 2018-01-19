\version "2.18.2"

\include "header.ily"
\header {
  subsubtitle = "Transposed for viola"
}

\include "bwv-1008-1/bwv-1008-1.ly"
\include "bwv-1008-2/bwv-1008-2.ly"
\include "bwv-1008-3/bwv-1008-3.ly"
\include "bwv-1008-4/bwv-1008-4.ly"
\include "bwv-1008-5-1/bwv-1008-5-1.ly"
\include "bwv-1008-5-2/bwv-1008-5-2.ly"
\include "bwv-1008-6/bwv-1008-6.ly"

\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "alto" \transpose c c { \prelude } }
	\layout { }
	\header { piece = "Prélude" }
	\midi {}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \allemande } }
	\layout { } %system-count = #11
	\header { piece = "Allemande" }
	\midi {}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \courante } }
	\layout { }
	\header { piece = "Courante" }
	\midi {}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \sarabande } }
	\layout {  } %system-count = #5
	\header { piece = "Sarabande" }
	\midi {}
}
\pageBreak

\score { { \clef "alto" \transpose c c { \menuetI } }
	\layout { }
	\header { piece = "Menuet 1" }
	\midi { \tempo 4 = 140}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \menuetII } }
	\layout { }
	\header { piece = "Menuet 2" }
	\midi { \tempo 4 = 140}
}
\pageBreak

\score { { \clef "alto" \transpose c c { \gigue } }
	\layout { }
	\header { piece = "Gigue" }
	\midi {\tempo 8 = 160}
}

}
