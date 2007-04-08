\version "2.4.0"

\header {
	title = "Suite 1 for Cello Solo"
        subtitle = "Transposed for viola"
	opus = "BWV 1007"
	composer = "Johann Sebastian Bach"
	enteredby = "Andreas Scherer"

	mutopiatitle = "Suite 1 for Cello Solo, transposed for viola"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV1007"
	mutopiainstrument = "Viola"
	source = "Schirmer, 1916"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Andreas Scherer"
	maintainerEmail = "andreas_mutopia@freenet.de"
	lastupdated = "2005/Jan/14"

        footer = "Mutopia-2005/01/14-517"
        tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + " and Chris Sawer.} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

\include "bwv1007_prelude.ly"
\include "bwv1007_allemande.ly"
\include "bwv1007_courante.ly"
\include "bwv1007_sarabande.ly"
\include "bwv1007_menuet_i.ly"
\include "bwv1007_menuet_ii.ly"
\include "bwv1007_gigue.ly"

\book {

\score { { \clef "alto" \prelude }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Prélude" }
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

\score { { \clef "alto" \menuetI }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Menuet 1" }
}

\score { { \clef "alto" \menuetII }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Menuet 2" }
}

\score { { \clef "alto" \gigue }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Gigue" }
}

% MIDI output of all parts
\score { {
	\tempo 4 = 80 \prelude
	\tempo 4 = 70 \allemande
	\tempo 4 = 80 \courante
	\tempo 4 = 60 \sarabande
	\tempo 2 = 60 \menuetI
	\tempo 2 = 60 \menuetII
	\tempo 2 = 60 \gigue }
	\midi { %{ Use explicit \tempo specifications %} }
}

}
