\score {
\relative c' {
	\new PianoStaff
<<
\new Staff { \clef treble \time 4/2 \key g \minor
	r1*4/2^\markup {\bold "Allegro moderato"} 
	r
	r2 f e1
	g fis
	<< 
	{ bes1 a
	c b2. c4
	d a! a a a g8 fis g2~
	g8 a bes4 bes bes bes a8 g a2
	bes1 a
	d\rest e4 c c c 
	c bes8 a! bes2~ bes8 c des4 des des
	des c8 bes c1 b2
	bes!4 bes bes bes bes a!8 g a2
	a1~ a2. b4
	c1 r4 a!4 a a
	a g8 fis g2 r1
	r1*4/2
	r 
	r
	bes1 a
	c b2. c4
	d a! a a a g8 fis g2~ 
	g8 a bes4 bes bes bes a8 g a2
	g8 a bes4 bes bes bes a8 g a2
	f8 g aes4 aes aes aes g8 f g2~
	g4 f8 e f1~ f2\fermata
}	
	\\
	{r4 g g g g f8 e f2~
	f8 g aes4 aes aes aes g8 f g2~
	g4 f8 e d2 r4 e e e
	e d8 cis d4 r4 r1
	r4 g g g g f8 e f2~
	f8 g aes4 aes aes aes g8 f g2
	g1 bes2. aes8 g
	aes2 f4 ees d!2~ d8 d e fis
	g1 f!2 r
	f1 e
	g fis
	r4 d d d d c8 b c2~
	c8 d ees!4 ees ees ees d8 c d2
	r4 d d d d c8 b c4 c~
	c8 d ees!4 ees ees ees d8 c d2
	g1 a2. g4
	f2. ees!4 d1~
	d2 r r4 e e e
	e d8 cis d2 r1
	r d8 e f4 f f 
	c2 r c8 d ees!4 ees ees
	d2 des c c\fermata}
	>>
	r1*4/2
	r
	<<
	{ s1*4/2
	r2 f ees1
	g fis
	g2 bes 1 a2
	c1 b2~ b8 g a! b
	c4 c c c c bes!8 a bes2~ 
	bes4 a8 g a2~ a4 g8 fis g2~
	<< { g4 fis8 e fis2\startTrillSpan}
	{s2.. \grace { g8\stopTrillSpan}} >>
	g1\fermata }
	\\
	{ r1. bes,2 
	a1 c 
	b4 a bes c d ees! d c
	bes2. c4 d1
	c d
	c2~ c8 d ees f g2. f4
	e2 ees r4 d d d
	d2. c4 b1\fermata }
	>>
	\bar "||" 
	}

\new Staff { \clef bass \time 4/2 \key g \minor
	<<
	{ bes1^\markup {\bold "B"} a^\markup {\bold "A"}
	c^\markup {\bold "C"} b2.^\markup {\bold "H"} c4
	d a! a a a g8 fis g2~
	g8 a bes4 bes bes bes a8 g a2
	d1. d,8 e f g 
	aes2 f'4 ees d1
	d2 a4 b c1
	bes!2. cis4 d2. c4
	bes2 g8 a bes c d4 d d d
	d c8 b c2~ c8 d ees!4 ees ees 
	ees d8 c d2 bes!~ bes8 c des ees
	f2 c d!1~
	d4 des c1 r2
	r4 d! d d d c8 b c2~
	c8 d ees!4 ees ees ees d8 c d2
	d,2. e4 f f f f
	f ees!8 d ees2 r4 g g g 
	g f8 e f2~ f8 g aes4 aes aes
	aes g8 f g1~ g8 a! bes c 
	d1. r2
	r1*4/2
	f,1 e
	g fis4 c'! c c 
	c bes8 a g a bes c d4 d d d 
	aes2 f8 g aes bes c4 c c c
	r bes bes bes bes a!8 g a2
	r1. f2
	e1 g
	fis g~
	g4 f e d c a b c
	d\breve
	r4 g g g g f8 e f2~
	f8 g aes4 aes aes aes g8 f g4 f~
	f ees8 d ees2 d4 d' d d 
	d cis8 b c4 c c b8 a bes2
	a1 d,\fermata 
	
	}
	\\
	{ r4 g g g g f8 e f2~
	f8 g aes4 aes aes aes g8 f g2~
	g4 f8 e d2 r4 e e e 
	e d8 cis d1~ d8 c bes a 
	g2~ g8 a bes c d4 d d d 
	c c8 b c d ees! f g1
	r2 f e1
	g fis
	g d2. e4
	f2. ees!8 d c2 r
	r4 g' g g g f8 e f2~ 
	f8 g aes4 aes aes aes g8 fis g2~
	g4 f e2 f2. e4
	d2~ d8 e f g a4 a, a a
	g g8 fis g a bes c d2 r
	b1 a 
	c b2. c4 
	d2. e4 f2. ees!8 d
	c1 bes2 r
	r4 g' g g g f8 e f2~
	f8 g aes4 aes aes aes g8 f g2
	d2 f,8 g a b c1
	bes!2. c4 d1
	g d2. e4
	f1 c2. d8 ees!
	f1.~ f2\fermata
	r2 bes, a1
	c b4 a b c
	d c bes! a g a bes c
	d2 d, a'1
	g d
	g\breve~
	g~
	g~
	g~
	g1 g\fermata  }
	>>
	}
>>
}

\midi {
	\context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 70 2)
	} 
	}
\layout { }
}

\header {
		 title = "Fugue sur le nom de Bach"
		 subtitle =  "Extraite de Fugues op.17" 
		 composer = "N. RIMSKY-KORSAKOV (1844-1908)"
		 mutopiatitle = "Fugue sur le nom de Bach"
		 mutopiacomposer = "Rimsky-KorsakovN"
		 mutopiainstrument = "Piano"
		 style = "Romantic"
		 copyright = "Public Domain"
		 maintainer = "Lespinasse Roman"	
		 maintainerEmail = "lespinasseroman@gmail.com"
		 source = "Transcription"

 footer = "Mutopia-2008/01/26-1271"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
\paper {
 page-top-space = 4\mm }


\version "2.10.33"  


