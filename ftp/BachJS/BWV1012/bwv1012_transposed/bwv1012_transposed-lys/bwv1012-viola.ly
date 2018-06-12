\version "2.18.2"

\include "header.ly"
\header {
    subtitle = "\"Sechs Suiten für Violoncello\""
    subsubtitle = "Transposed for Viola"
}

\include "./bwv-1012-1_viola.ly"
\include "./bwv-1012-2_viola.ly"
\include "./bwv-1012-3_viola.ly"
\include "./bwv-1012-4_viola.ly"
\include "./bwv-1012-5-1_viola.ly"
\include "./bwv-1012-5-2_viola.ly"
\include "./bwv-1012-6_viola.ly"


\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "alto" \transpose c c' { \prelude } }
	\layout {  }
	\header { piece = "Prelude" }
	\midi { \tempo 2 = 75}
}
\pageBreak

\score { { \clef "alto" \transpose c c' { \allemande } }
	\layout { }
	\header { piece = "Allemande" }
	\midi {\tempo 4 = 40 }
}
\pageBreak

\score { { \clef "alto" \transpose c c' { \courante } }
	\layout {  }
	\header { piece = "Courante" }
	\midi {\tempo 4 = 130 }
}
\pageBreak

\score { { \clef "alto" \transpose c c' { \sarabande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Sarabande" }
	\midi {\tempo 2 = 55}
}
%\pageBreak

\score { { \clef "bass" \transpose c c' { \gavotteI } }
	\layout { system-count = 8 }
	\header { piece = "Gavotte 1" }
	\midi {\tempo 4 = 130 }
}

\score { { \clef "alto" \transpose c c' { \gavotteII } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gavotte 2" }
	\midi {\tempo 2 = 65}
}
\pageBreak

\score { { \clef "alto" \transpose c c' { \gigue } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gigue" }
	\midi {\tempo 4. = 80}
}

}
