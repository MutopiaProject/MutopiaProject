\version "2.18.2"

\include "header.ly"

\include "./bwv-1012-1.ly"
\include "./bwv-1012-2.ly"
\include "./bwv-1012-3.ly"
\include "./bwv-1012-4.ly"
\include "./bwv-1012-5-1.ly"
\include "./bwv-1012-5-2.ly"
\include "./bwv-1012-6.ly"


\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "bass" \transpose c c { \prelude } }
	\layout {  }
	\header { piece = "Prelude" }
	\midi { \tempo 2 = 75}
}
\pageBreak

\score { { \clef "bass" \transpose c c { \allemande } }
	\layout { }
	\header { piece = "Allemande" }
	\midi {\tempo 4 = 40 }
}
\pageBreak

\score { { \clef "bass" \transpose c c { \courante } }
	\layout {  }
	\header { piece = "Courante" }
	\midi {\tempo 4 = 130 }
}
\pageBreak

\score { { \clef "bass" \transpose c c { \sarabande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Sarabande" }
	\midi {\tempo 2 = 55}
}
%\pageBreak

\score { { \clef "bass" \transpose c c { \gavotteI } }
	\layout { system-count = 8 }
	\header { piece = "Gavotte 1" }
	\midi {\tempo 4 = 130 }
}

\score { { \clef "bass" \transpose c c { \gavotteII } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gavotte 2" }
	\midi {\tempo 2 = 65}
}
\pageBreak

\score { { \clef "bass" \transpose c c { \gigue } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gigue" }
	\midi {\tempo 4. = 80}
}

}
