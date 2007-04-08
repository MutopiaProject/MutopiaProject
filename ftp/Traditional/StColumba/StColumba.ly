\header {
	composer = "Trad"
	arranger = "C. V. Stanford (1852--1924)"
	title = "St Columba"
	metre = "87. 87. Iambic"
	meter = \metre

	year = "circa 1868"
	style = "Hymn"
	mutopiacomposer = "Traditional"
	mutopiatitle = \title
	source = "Book of Common Praise, 1906"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2005/Jan/08"

	footer = "Mutopia-2005/01/18-526"
	tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

\version "2.4.0"

%{
  Usual words include `The King of Love my Shepherd is',
  Original copyright Stainer and Bell.
%}

global= {
	\time 3/4
	\key es\major
	\partial 4 
	s4 |
	\skip 2.* 3 |
	s2 \bar "||"
	s4 |
	\skip 2.* 3 |
	s2 \bar "||"
	s4 |
	\skip 2.* 3 |
	s2 \bar "||"
	s4 |
	\skip 2.* 3 |
	s2 \bar "||"
}

sop=\relative c'{
	es8( f) |
	g2 as4 |
	bes2 as8( bes) |
	g2 f4 |
	es2 

	es8( f)|
	g2 as4 |
	bes2 \times 2/3 {as8( bes  c)} |
	bes2. | bes2

	bes4 |
	es2 c4 |
	bes2 as4 |
	g2 f4 |
	es2 
	g4 |
	bes2  as4 |
	g2 f4 |
	es2. |
	es2
}

alto=\relative c' {
	bes4 |
	es2 es4 |
	d2 es8( f) |
	es2 d4 |
	bes2

	es4 |
	es2 es4 |
	es2 c4 |
	es2( f4) |
	g2

	g8( f) |
	es2 f4 |
	g2 f4 |
	es2 d4 |
	c2 

	d4 |
	es2 es4 |
	es2 d4 |
	es2( c4) |
	bes2
}

tenor=\relative c' {
	g8( as) |
	bes2 as4 |
	f2 es8( bes') |
	bes2 bes8( as) |
	g2

	g8( as) |
	bes2 c4 |
	bes2 es,4 |
	g2( as4) |
	bes2

	bes4 |
	c2 as4 |
	g2 c4 |
	bes4.( c8) d4 |
	es2 

	d4 |
	bes2 c4 |
	bes2 as4 |
	g2( as4) |
	g2
}

bass=\relative c{
	es4 |
	es( d) c |
	bes2 c8( d) |
	es4( g,) bes |
	es2

	c4 |
	bes2 as4 |
	g2 as4 |
	es'2. |
	es2

	es8( d) |
	c2 d4 |
	es2 f4 |
	g4.( as8) bes4 |
	c2 

	bes4 |
	g( g,) as |
	bes2 bes4 |
	es2. |
	es4
}

\score {
        \transpose c' b \context ChoirStaff <<
		\context Staff = "top" << \global 
		\context Voice = "sop" {\voiceOne \sop}
		\context Voice = "alto" {\voiceTwo \alto}
		>>
		\context Staff = "bottom" << { \clef "bass" \global }
		\context Voice = "tenor" {\voiceOne \tenor}
		\context Voice = "bass" {\voiceTwo \bass}
		>>
	>>
	\layout {
	       indent = 0.0\mm
       }
	\midi {
	      \tempo 4=100
      }
}

