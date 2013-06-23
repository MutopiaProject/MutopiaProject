\version "2.4.0"

\header {
	title = "Suite 4 for Cello Solo"
        subtitle = "Transposed for viola"
	opus = "BWV 1010"
	composer = "Johann Sebastian Bach"
	enteredby = "Andreas Scherer"

	mutopiatitle = "Suite 4 for Cello Solo, transposed for viola"
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

\score { { \clef "alto" \prelude }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Präludium" }
}

\score { { \clef "alto" \allemande }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Allemande" }
}

\score { { \clef "alto" \courante }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Courante" }
}

\score { { \clef "alto" \sarabande }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Sarabande" }
}

\score { { \clef "alto" \bourreeI }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Bourrée 1" }
}

\score { { \clef "alto" \bourreeII }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Bourrée 2" }
}

\score { { \clef "alto" \gigue }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gigue" }
}

% MIDI output of all parts
\score { {
	\tempo 2 = 55  \prelude
	\tempo 4 = 90  \allemande
	\tempo 4 = 96  \courante
	\tempo 4 = 100 \sarabande
	\tempo 2 = 60  \bourreeI
	\tempo 2 = 65  \bourreeII
	\tempo 4 = 120 \gigue }
	\midi { %{ Use explicit \tempo specifications %} }
}

}
