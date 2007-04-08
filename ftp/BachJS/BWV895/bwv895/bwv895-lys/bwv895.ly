\version "2.4.0"

\header {
	% For formatting purporses no 'title' nor 'opus'
	composer = "Johann Sebastian Bach, BWV 895"
	enteredby = "Andreas Scherer"

	mutopiatitle = "Preludio con Fuga"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV895"
	mutopiainstrument = "Harpsichord, Piano"
	source = "Edition Peters Nr. 200a"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Andreas Scherer"
	maintainerEmail = "andreas_mutopia@freenet.de"
	lastupdated = "2004/Nov/08"

	footer = "Mutopia-2004/11/08-492"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

\include "preludio.ly"
\include "fuga.ly"

\book {

% Preludio
\score {
	\new PianoStaff <<
		\context Staff = prelUpper <<
			\prelGlobal \prelI \\ \prelII >>
		\context Staff = prelLower <<
			\prelGlobal \clef "bass" \prelIII \\ \prelIV >>
	>>
	\midi { \tempo 4 = 54 }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Preludio" }
}

% Fuga
\score {
	\new PianoStaff <<
		\context Staff = fugaUpper <<
			\fugaGlobal \fugaI \\ \fugaII >>
		\context Staff = fugaLower <<
			\fugaGlobal \clef "bass" \fugaIII \\ \fugaIV >>
	>>
	\midi { \tempo 4 = 72 }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "Fuga a 4 voci" }
}

}
