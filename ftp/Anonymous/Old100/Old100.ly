#(ly:set-option 'old-relative)
\header{
	title = "Old 100th"
	composer = "Genevan Psalter 1551"
	arranger = "Arr. John Dowland"
	meter = "88 88"
	source = "A Pilgrimes Solace"
	mutopiacomposer = "attributed to L. Bourgeous (1510--1561)"
	date = "1612" % first published date I know about for this arrangement
	mutopiaarranger = "J. Dowland (1563-1626)"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2004/04/11"
	copyright = "Public Domain"
	
	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
	footer = "Mutopia-2004/04/11-90"

}

%{
	For some information on the history of this tune, see 
	http://homepage3.nifty.com/dikaios/CMstudy/English/papers/OV.htm
	and especially appendix 9.
%}
\version "2.1.33"

oneline=\notes{       
	\skip 1
	\skip 2*8
	\skip 1
	\bar "||"
}

global = \notes{
       \key g \major
       \time 4/2
       \partial 1
       \oneline
       \oneline
       \oneline
       \oneline
}

sop= \notes\relative c'' {
	b1^"Melody in tenor" |
	b2 a c b |
	b1 d |
	d

	d |
	d2 d d b |
	e1 d |
	d1

	b |
	a2 g fis d' |
	c1 a |
	b 

	b  |
	g2. g4 d'2 e |
	d1 d2.( c4) |
	b1
}

alt=\notes\relative c' {
	d1 |
	d2 d e4( fis) g2 |
	g1 fis |
	g

	g |
	g2 g fis e |
	g1 g |
	fis1

	d |
	fis2 d d2. d4 |
	e1 d |
	d 

	g1 |
	d2 g fis g |
	g1 fis |
	g
}

ten=\notes\relative c' {
	g1 |
	g2  fis e d |
	g1 a |
	b 

	b |
	b2 b a g |
	c1 b |
	a

	g |
	a2 b a g |
	e1 fis |
	g

	d'1 |
	b2 g a c |
	b1 a |
	g
}

bass=\notes\relative c{
	g1 
	g2 d' a b |
	e1 d |
	g,

	g' |
	g2 g d e |
	c1 g' |
	d

	g, |
	d'2 g, d' b |
	c1 d |
	g, 

	g'  |
	g2 e d c |
	g'1 d |
	g,
}


upper=\context Staff = "upper" <<
	\clef "treble"
	\global
	\context Voice = sop {\voiceOne \sop}
	\context Voice = alto {\voiceTwo \alt}
>>

lower=\context Staff = "lower" <<
	\clef "bass"
	\global
	\context Voice = tenor {\voiceOne \ten}
	\context Voice = bass {\voiceTwo \bass}
>>

\score {
       \context ChoirStaff <<
		\upper
		\lower
	>>
	\paper{
%		gourlayMaxmeasures = 6.0
		linewidth = 180.0\mm
		indent = 0.0\pt
		\context {
		    \StaffContext
		    \remove "Time_signature_engraver"
		}
	}
	\midi {
		\tempo 2 = 120
	}
}
	

