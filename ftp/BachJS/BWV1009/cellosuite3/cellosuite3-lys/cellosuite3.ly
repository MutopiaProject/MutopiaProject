\version "2.18.2"

\include "header.ily"
\include "cellosuite3_1_prelude.ly"
\include "cellosuite3_2_allemande.ly"
\include "cellosuite3_3_courante.ly"
\include "cellosuite3_4_sarabande.ly"
\include "cellosuite3_5_bourree.ly"
\include "cellosuite3_6_gigue.ly"

\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "bass" \transpose c c { \prelude } }
	\layout { }
	\header { piece = "Prélude" }
	\midi {\tempo 4 = 120}
}
\pageBreak

\score { { \clef "bass" \transpose c c { \allemande } }
	\layout { system-count = #12  }
	\header { piece = "Allemande" }
	\midi {}
}
\pageBreak

\score { { \clef "bass" \transpose c c { \courante } }
	\layout { system-count = #12 }
	\header { piece = "Courante" }
	\midi {\tempo 2. = 70}
}
%\pageBreak

\score { { \clef "bass" \transpose c c { \sarabande } }
	\layout {  }
	\header { piece = "Sarabande" }
	\midi {}
}

\score { { \clef "bass" \transpose c c { \bourree } }
	\layout { }
	\header { piece = "Bourrée" }
	\midi {\tempo 4=150}
}
%\pageBreak

%\score { { \clef "bass" \transpose c c, { \menuetII } }
%	\layout { }
%	\header { piece = "Menuet 2" }
%	\midi {}
%}

\score { { \clef "bass" \transpose c c { \gigue } }
	\layout { }
	\header { piece = "Gigue" }
	\midi {\tempo 4.=65}
}

}
