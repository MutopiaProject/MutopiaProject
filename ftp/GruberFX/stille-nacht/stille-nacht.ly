\version "2.4.2"
\header {
	title = "Stille Nacht"
	subtitle = "Silent Night"

	mutopiatitle = "Silent Night"
	mutopiacomposer = "GruberFX"
	mutopiainstrument = "Guitar"
	date = "1818/Dec/24"
	%source = "http://www.oberndorf.co.at/museum/StilleNacht/images/altenoten.jpg"
	source = "http://www.mutopiaproject.org/ftp/GruberFX/altenoten.jpg"
	style = "Hymn"
	copyright = "Creative Commons Attribution-ShareAlike 2.0"
	maintainer = "Daniel Widyanto"
	maintainerEmail = "kunilkuda@gmail.com"
	lastupdated = "2005/Jan/21"
	
	footer = "Mutopia-2005/01/21-521"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2004.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

melody = \relative c'' {
	 \clef treble
	 \key c \major
	 \time 3/4
	 \autoBeamOff
	
	d4. e8 d4       | b2.         | d4. e8 d4      |
	b2.             | a'2-1  a4   | fis2.          |
	g2 g4           | d2.         | e2 e4          |
	g4. fis8 e4     | d4. e8 d4   | b2.            |
	e2 e4           | g4. fis8 e4 | d4. e8 d4      |
	b2.             | a'2 a4      | c4.-4 a8 fis4  |
	g2-4 g4         | b2.-4       | g4 d4 b4       |
	d4.-3 c8-1 a4-2 | 
}

filling = \relative c' {
	  \clef treble
	  \key c \major
	  \time 3/4
	  
	g8 d'8 g2             | g,8 d'8 g8 d8 g,8 d'8 | g,8 d'8 g2            |
	g,8 d'8 g8 d8 g,8 d'8 | d8-1 a'8 d8 fis8 r4   | d,8 a'8 d8 a8 d,8 a'8 |
	g,8 d'8 g8 b8 r4      | g,8 d'8 g8 d8 g,8 d'8 | c8 e8 g8 c8 r4        |
	c,8 g'8 c2            | g,8 d'8 g2            | g,8 d'8 g8 d8 g,8 d'8 |
	c8 e8 g8 c8 r4        | c,8 g'8 c2            | g,8 d'8 g2            |
	g,8 d'8 g8 d8 g,8 d'8 | d8 a'8 d8 fis8 r4     | d,8 a'8 d2            |
	g,,8-1 d'8 g8 b8 r4   | g,8-1 d'8 g8 d g,8 d' | g,8 g'8 r8 g8 r8 g8   |
	d8 a'8-1 fis8-4 r8 r4 | <g, g'>2.
}

\score {
	\context Staff <<
		\set Staff.midiInstrument = "acoustic guitar (nylon)"
		{ << { \melody } \\ { \filling } >> }
        >>
	\layout { }
	\midi { 
		\tempo 4=60
	}
}
