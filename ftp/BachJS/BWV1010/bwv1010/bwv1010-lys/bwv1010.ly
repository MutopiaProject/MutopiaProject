\version "2.18.2"
% Note - Character set converted to UTF-8 for source repository consistency
% For correct compilation with LilyPond 2.4 this change may need to be reverted

\include "header.ily"
\include "bwv1010_prelude.ly"
\include "bwv1010_allemande.ly"
\include "bwv1010_courante.ly"
\include "bwv1010_sarabande.ly"
\include "bwv1010_bourree_i.ly"
\include "bwv1010_bourree_ii.ly"
\include "bwv1010_gigue.ly"

\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "bass" \transpose c c, { \prelude } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Präludium" }
	\midi { \tempo 2 = 55}
}
\pageBreak

\score { { \clef "bass" \transpose c c, { \allemande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Allemande" }
	\midi {\tempo 4 = 90 }
}
\pageBreak

\score { { \clef "bass" \transpose c c, { \courante } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Courante" }
	\midi {\tempo 4 = 96 }
}
\pageBreak

\score { { \clef "bass" \transpose c c, { \sarabande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Sarabande" }
	\midi {\tempo 4 = 100}
}

\score { { \clef "bass" \transpose c c, { \bourreeI } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Bourrée 1" }
	\midi {\tempo 2 = 60 }
}

\score { { \clef "bass" \transpose c c, { \bourreeII } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Bourrée 2" }
	\midi {\tempo 2 = 65}
}
\pageBreak

\score { { \clef "bass" \transpose c c, { \gigue } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gigue" }
	\midi {\tempo 4. = 120}
}

}
