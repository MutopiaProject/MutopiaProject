\header {
	composer = "Orlando Gibbons"
	title = "The Silver Swan"
	enteredby = "music@chubb.wattle.id.au"

	mutopiatitle = "The Silver Swan"
	mutopiainstrument = "Voice"
	date = "1612"
	source = "http://www.musicaviva.com/ensemble/choir/music.tpl?filnavn=gibbons-silver-swan AND the Penguin Book of Madrigals"
	style = "Renaissance"
	copyright = "MutopiaBSD"
	maintainer = "Peter Chubb"
	maintainerEmail = "music@chubb.wattle.id.au"
	lastupdated = "2003/May/9"
	
	tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and released under the MutopiaBSD licence by " + \maintainer + ".} \\makebox[\\textwidth][c]{You should have received a copy of the licence with this music. If not, it is available at the above website.}}"
	footer = "Mutopia-2003/05/09-302"
}

\version "1.6.5"

global = \notes {
	\time 4/4
	\key f \major
	\dynamicUp
	\property Staff.automaticMelismata = ##t
	\mark "A"
	\skip 1*6
	\mark "B"
	\skip 1*7 \mark "C"
}

cantusMusic = \notes\relative c'' {
	\property    Staff.midiInstrument = "recorder" 
	\clef "treble"
	r4 c4 \mp c d | 
	e2. f4 |
	d4. c8 bes4 a |
	g2. g4 |
%5
	bes4. c8 d4 a | 
	c4 f, g4. f8 |
	f2 r2 |
	r4 f'4. f8 e4 |
	d2. c4 |
%10
	b! c d4. c8 |
	c2 r4 g'4 |
	c, f bes, d |
	g, [a8\> () bes] c4. \! bes8 |
	a2 r2 |
%15
	r4 f'4. \p f8 e4 |
	d2. c4
	b! c d4. c8 |
	c2 r4 g' |
	c,4 f bes, d\> |
%20
	g,  [a8( )bes] c4. \! bes8 |
	a1-\fermata \pp \bar "|."
}

cantusWords = \lyrics{
	The sil -- ver swan,
	who liv -- ing had no note,
	When death ap -- proached un -- locked her si -- lent throat.

	Lean -- ing her breast a -- gainst the reed -- y shore
	Thus sung her first and last, and sung no more:

	Fare -- well all joys;
	O Death come close mine eyes.

	More geese than swans now live, more fools than wise.
}
quintusMusic = \notes\relative c'{
        \clef "G"
	\property    Staff.midiInstrument = "recorder" 
	r4 c4 \mp f f |
	e4. f8  g4 a|
	f4. e8 ( )d4 c4 ~ |
	[c8 d e f] g4 g, ~ |
%5
	g d'4. e8 ()f4 |
	e4 f2 () e4 |
	f4 a4. \mf a8 g4 |
	f4 [d8( e] [f g ] )a4 |
	d,4. e8 [f( g )a f] |
%10
	g2. g4 |
	e f g4. g8 |
	a4 f g4. f8 |
	e4 f2 ( \> )e4 |
	\! f4 a4. \p a8 g4 |
%15
	f4 [d8( e] [f g] )a4 |
	d,4. e8 [f g( a )f] |
	g2. g4 |
	e4 f g4. g8 |
	a4 f g4. f8 |
	e4 f2( ) e4 |
	f1-\fermata \bar "|."
}

quintusWords = \lyrics{
	The sil -- ver swan, who liv -- ing had no note,
	When death ap -- proached un -- locked her si -- lent throat.
	Lean -- ing her breast a -- gainst the reed -- y shore,
	Thus sung her first and last, and sung no more, no more:
	Fare -- well,  all joys, O __ death,  come close mine eyes,
	More geese than swans now live, more fools than wise, than __ wise
}

altusMusic = \notes\relative c {
	\property    Staff.midiInstrument = "recorder" 
	   \clef "G2_8" 
	   r4 c' c b! |
	   c2. c4 |
	   bes bes f' f |
	   e2. e4 |
%5
	   d4. c8 bes4 f |
	   g a g g |
	   a2 r4 c \mp ~  |
	   [c8 c] bes4 a a |
	   bes4. c8( [d e f )c] |
%10
	   es4 es d2 |
	   g4 c, d c ~ | 
	   c [d8( )f] es4 d |
	   c2 c |
	   c r4 c4 ~ |
%15
	   [c8 c] bes4 a a |
	   bes4. c8( [d e f )c] |
	   es4 es d2 |
	   g4 c, d c ~ |
	   c [d8 () f] es4 d4 |
	   c2 c |
	   c1
}	   

altusWords = \lyrics {
	The sil -- ver swan, who liv -- ing had no note,
	When death ap -- proached un -- locked her si -- lent throat;
	Lean -- ing her breast a -- gainst the __  reed -- y shore,
	Thus sung her first and last and sung no more.
	Fare -- well, all joys; 
	O death, come __ close mine eyes;
	More geese than swans now live
	more fools than wise.
}

tenorMusic = \notes\relative c {
	  \clef "bass"
	\property    Staff.midiInstrument = "recorder" 
	  r4 a' \mp a [g8 f]
	  g4. f8 e4 c |
	  d4. e8( [f g a )bes] 
	  c4 c,4 [c8 d] [e f]|
	  g2 d |
	  [e8 c] c'4 d c |
	  c2. c,4 \mf |
	  f4. g8 [a bes] c4 |
	  d2 r2
%10
	g,4 c2 b!4 |
	c a bes c |
	a d [g,8 g] bes4 ~|
	bes a g2 |
	f2 r4 c \p  |
%15
	f4. g8 a bes c4 |
	d2 r2 |
	g,4 c2 b!4 |
	c a bes c |
	a d g,8 g bes4 ~ |
	bes a( )g2 |
	f1-\fermata \bar "|."
}	   

bassMusic = \notes\relative c {
	\property    Staff.midiInstrument = "cello" 
	\clef "bass"	
	r4 f \mp f d |
	c2. a4 |
	bes4. c8 d4 f |
	c4. d8 e f g4 |
%5
	g, bes4. c8 ()d4 |
	c4 a bes c |
	f, f'4. \mf f8 e4 |
	d2. c4 |
	bes8 bes bes'2 a4 |
%10
	g1

	c,4 f2 e4 |
	f d es bes |
	c2. c4 |
	f,4 f'4.  \p f8 e4 |
%15
	d2. c4 |
	bes8 bes bes'2 a4 |
	g1 |
	c,4 f2 es4 |
	f4 d es bes |
%20
	c2. c4 |
	f,1-\fermata\pp
}

bassWords = \lyrics {
	The sil -- ver swan, who liv -- ing had no note, 
	When death ap -- proached un -- locked __ her __ si -- lent, si -- lent throat;

	Lean -- ing her breast  a -- gainst the reed -- y shore,
	Thus sung her first and last and sung no more.
	Fare -- well, all joys; O death, come close mine eyes;
	More geese than swans now live,
	more fools than wise.
}
	
\score {
       \notes <
        \addlyrics
		\context Staff = Cantus \notes< \global\cantusMusic >
		\context Lyrics = Cantus  \cantusWords
	\addlyrics
		\context Staff = Quintus \notes< \global\quintusMusic >
		\context Lyrics = Quintus  \quintusWords
	\addlyrics
		\context Staff = Altus \notes <\global\altusMusic >
		\context Lyrics = Altus \altusWords
	\context Staff = Tenor \notes< \global\tenorMusic >
	\addlyrics 
		\context Staff = Bass \notes< \global\bassMusic >
		\context Lyrics = Bass \bassWords
	>

	\paper {
	       indent=0.0\mm
		textheight = 240.0\mm 
	}
	\midi { \tempo 4=100 }
}

