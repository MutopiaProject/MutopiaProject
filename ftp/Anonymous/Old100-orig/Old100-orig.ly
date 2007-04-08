#(ly:set-option 'old-relative)
\header{
	title = "Old 100th"
	meter = "88 88"
	composer = "Genevan Psalter 1551"
	enteredby = "Peter Chubb"
	source = "Geneva Psalter 1551"
	mutopiacomposer = "attributed to L. Bourgeous (1510--1561)"
	date = "1551"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2004/Apr/11"

	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
	footer = "Mutopia-2004/04/11-194"
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
       \oneline \break
       \oneline
       \oneline
}

sop= \notes\relative c'' {
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


alt=\notes\relative c'{
	d1 |
	d2 d b b |
	b1 d |
	d

	d |
	d2 g fis g |
	g1 g |
	fis

	g |
	d2 d d d |
	e1 c |
	d

	b |
	b2 e e c |
	d( g ~  g) fis |
	g1
}

ten = \notes\relative c' {
	b1 |
	b2 a g fis |
	g1 fis |
	g

	g |
	b2 d d b |
	e1 d |
	d

	b |
	a2 g fis g |
	g1 a |
	b

	fis |
	g2 b c e |
	d1 ~ d2. c4 |
	b1
}


bass=\notes\relative c'{
	g1 |
	g2 d e b |
	e1 d |
	g,

	g' |
	g2 g d e |
	c1 g |
	d'

	e |
	fis2 g d b |
	c1 a |
	g

	b  |
	e2. d4 c( b) a2 |
	b2.( c4) d1 |
	g,1
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


