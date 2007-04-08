\version "2.4.0"

\header {
	title = "Suite 4 for Cello Solo"
	opus = "BWV 1010"
	composer = "Johann Sebastian Bach"
	enteredby = "Andreas Scherer"

	mutopiatitle = "Suite 4 for Cello Solo"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV1010"
	mutopiainstrument = "Cello"
	source = "Schirmer, 1916"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Andreas Scherer"
	maintainerEmail = "andreas_mutopia@freenet.de"
	lastupdated = "2005/Jan/15"

	footer = "Mutopia-2005/01/15-518"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + " and Chris Sawer.} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

\include "bwv1010_prelude.ly"
\include "bwv1010_allemande.ly"
\include "bwv1010_courante.ly"
\include "bwv1010_sarabande.ly"
\include "bwv1010_bourree_i.ly"
\include "bwv1010_bourree_ii.ly"
\include "bwv1010_gigue.ly"

\book {

\score { { \clef "bass" \transpose c c, { \prelude } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Präludium" }
}

\score { { \clef "bass" \transpose c c, { \allemande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Allemande" }
}

\score { { \clef "bass" \transpose c c, { \courante } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Courante" }
}

\score { { \clef "bass" \transpose c c, { \sarabande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Sarabande" }
}

\score { { \clef "bass" \transpose c c, { \bourreeI } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Bourrée 1" }
}

\score { { \clef "bass" \transpose c c, { \bourreeII } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Bourrée 2" }
}

\score { { \clef "bass" \transpose c c, { \gigue } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gigue" }
}

% MIDI output of all parts
\score { { \transpose c c, {
	\tempo 2 = 55  \prelude
	\tempo 4 = 90  \allemande
	\tempo 4 = 96  \courante
	\tempo 4 = 100 \sarabande
	\tempo 2 = 60  \bourreeI
	\tempo 2 = 65  \bourreeII
	\tempo 4 = 120 \gigue } }
	\midi { %{ Use explicit \tempo specifications %} }
}

}
