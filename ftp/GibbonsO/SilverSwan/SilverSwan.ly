\header {
	composer = "Orlando Gibbons"
	title = "The Silver Swan"
	enteredby = "mutopia@chubb.wattle.id.au"

	mutopiatitle = "The Silver Swan"
	mutopiacomposer = "GibbonsO"
	mutopiainstrument = "Voice (SAATB)"
	date = "1612"
	source = "http://www.musicaviva.com/ensemble/choir/music.tpl?filnavn=gibbons-silver-swan AND the Penguin Book of Madrigals"
	style = "Renaissance"
	copyright = "Public Domain"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2009/Aug/5"

 footer = "Mutopia-2009/08/05-302"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.12.0"

global =  {
	\time 4/4
	\key f \major
	\dynamicUp
	 \unset Staff.melismaBusyProperties 
	\mark "A"
	\skip 1*6
	\mark "B"
	\skip 1*7 \mark "C"
}

cantusMusic = \context Voice = cantus \relative c'' {
	\set Staff.midiInstrument = "recorder" 
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
	g,  a8[\> ( bes)] c4.  bes8\! |
	a2 r2 |
%15
	r4 f'4. \p f8 e4 |
	d2. c4
	b! c d4. c8 |
	c2 r4 g' |
	c,4 f bes, d\> |
%20
	g,   a8[(  bes)] c4.  bes8\! |
	a1\fermata \pp \bar "|."
}

cantusWords = \lyricmode{
	The sil -- ver swan,
	who liv -- ing had no note,
	When death ap -- proached un -- locked her si -- lent throat.

	Lean -- ing her breast a -- gainst the reed -- y shore
	Thus sung her first and last, and sung no more:

	Fare -- well all joys;
	O Death come close mine eyes.

	More geese than swans now live, more fools than wise.
}
quintusMusic = \context Voice = quintus \relative c'{
        \clef "G"
	\set Staff.midiInstrument = "recorder" 
	r4 c4 \mp f f |
	e4. f8  g4 a|
	f4. e8 (  d4) c4 ~ |
	 c8[ d e f] g4 g, ~ |
%5
	g d'4. e8 ( f4) |
	e4 f2 ( e4) |
	f4 a4. \mf a8 g4 |
	f4  d8[( e]  f[ g ]  a4) |
	d,4. e8  f[( g  a) f] |
%10
	g2. g4 |
	e f g4. g8 |
	a4 f g4. f8 |
	e4 f2 ( \>  e4) |
	 f4\! a4. \p a8 g4 |
%15
	f4  d8[( e]  f[ g]  a4) |
	d,4. e8  f[ g( a  f)] |
	g2. g4 |
	e4 f g4. g8 |
	a4 f g4. f8 |
	e4 f2(  e4) |
	f1\fermata \bar "|."
}

quintusWords = \lyricmode{
	The sil -- ver swan, who liv -- ing had no note,
	When death ap -- proached un -- locked her si -- lent throat.
	Lean -- ing her breast a -- gainst the reed -- y shore,
	Thus sung her first and last, and sung no more, no more:
	Fare -- well,  all joys, O __ death,  come close mine eyes,
	More geese than swans now live, more fools than wise, than __ wise
}

altusMusic = \context Voice = altus \relative c {
	\set Staff.midiInstrument = "recorder" 
	   \clef "G2_8" 
	   r4 c' c b! |
	   c2. c4 |
	   bes bes f' f |
	   e2. e4 |
%5
	   d4. c8 bes4 f |
	   g a g g |
	   a2 r4 c \mp ~  |
	    c8[ c] bes4 a a |
	   bes4. c8(  d[ e f  c)] |
%10
	   es4 es d2 |
	   g4 c, d c ~ | 
	   c  d8[(  f)] es4 d |
	   c2 c |
	   c r4 c4 ~ |
%15
	    c8[ c] bes4 a a |
	   bes4. c8(  d[ e f  c)] |
	   es4 es d2 |
	   g4 c, d c ~ |
	   c  d8[ ( f)] es4 d4 |
	   c2 c |
	   c1
}	   

altusWords = \lyricmode {
	The sil -- ver swan, who liv -- ing had no note,
	When death ap -- proached un -- locked her si -- lent throat;
	Lean -- ing her breast a -- gainst the __  reed -- y shore,
	Thus sung her first and last and sung no more.
	Fare -- well, all joys; 
	O death, come __ close mine eyes;
	More geese than swans now live
	more fools than wise.
}

tenorMusic =\context Voice = tenor \relative c {
	  \clef "bass"
	\set Staff.midiInstrument = "recorder" 
	  r4 a' \mp a  g8( f)
	  g4. f8 e4 c |
	  d4. e8(  f[ g a  bes)] 
	  c4 c,4( ~ c8[ d])  e[ f]|
	  g2 d |
	   e8[( c]) c'4 d c |
	  c2. c,4 \mf |
	  f4. g8  a[( bes]) c4 |
	  d2 r2
%10
	g,4 c2 b!4 |
	c a bes c |
	a d  g,8[ g] bes4 ~|
	bes a( g2) |
	f2 r4 c \p  |
%15
	f4. g8 a bes( c4) |
	d2 r2 |
	g,4 c2 b!4 |
	c a bes c |
	a d g,8 g bes4 ~ |
	bes a(  g2) |
	f1\fermata \bar "|."
}	   
tenorWords=\lyrics {
  The sil -- ver __ swan,
  who liv -- ing had no __
  note
  when __ death ap -- proached
  un -- locked her __ si -- lent throat
  a -- gainst the read -- y shore
  thus sung her first and last,
  and sung no more, and sung no __ more.
  Fare -- well all joys, O __ death __
  come close mine eyes;		
  more geese than swans now live,
  more fools than __ wise.
}

bassMusic = \context Voice = bass \relative c {
	\set Staff.midiInstrument = "cello" 
	\clef "bass"	
	r4 f \mp f d |
	c2. a4 |
	bes4. c8 d4 f |
	c4. d8 e f g4 |
%5
	g, bes4. c8 ( d4) |
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
	f,1\fermata\pp
}

bassWords = \lyricmode {
	The sil -- ver swan, who liv -- ing had no note, 
	When death ap -- proached un -- locked __ her __ si -- lent, si -- lent throat;

	Lean -- ing her breast  a -- gainst the reed -- y shore,
	Thus sung her first and last and sung no more.
	Fare -- well, all joys; O death, come close mine eyes;
	More geese than swans now live,
	more fools than wise.
}
	
\score {
        <<
		\context Staff = Cantus << \global\cantusMusic >>
		\lyricsto cantus \context Lyrics = Cantus  \cantusWords
		\context Staff = Quintus << \global\quintusMusic >>
		\lyricsto quintus \context Lyrics = Quintus  \quintusWords
		\context Staff = Altus  <<\global\altusMusic >>
		\lyricsto altus \context Lyrics = Altus \altusWords
		\context Staff = Tenor  <<\global\tenorMusic >>
		\lyricsto tenor \context Lyrics = Tenor \tenorWords
		\context Staff = Bass << \global\bassMusic >>
		\lyricsto bass \context Lyrics = Bass \bassWords
	>>

	\layout {
	       indent=0.0\mm
		textheight = 240.0\mm 
	}
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
}
