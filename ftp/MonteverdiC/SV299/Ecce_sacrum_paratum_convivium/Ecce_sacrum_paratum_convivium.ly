\version "2.12.2"

\header {
	title = "Ecce sacrum paratum convivium"
	composer = "Claudio Monteverdi (1567-1643)"
	mutopiatitle = "Ecce sacrum paratum convivium"
	mutopiacomposer = "MonteverdiC"
	mutopiaopus = "SV 299"
	mutopiainstrument = "Voice (T), Basso Continuo"
	date = "1625"
	source = "Raccolta di Leonardo Simonetti. - Ghirlanda sacra scielta da diuersi Eccellentissimi Compositori de uarij Motetti à Voce sola Libro Primo Opera Seconda per Leonardo Simonetti Musico nella Capella del Ser.mo Prencipe di Venezia in S. Marco. - Stampa del Gardano. In Venezia 1625."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2010/01/31-1739"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Ec -- ce Sa -- crum pa -- ra -- tum con -- vi -- vi -- um quid mi -- ra -- mi -- ni quid quid mi -- ra -- mi -- ni mun -- da -- te mun -- da -- te mun -- da -- te cor -- da ves -- tra fes -- ti -- na -- te mun -- da -- te cor -- da cor -- da fes -- ti -- na -- te fes -- ti -- na -- te ac -- cu -- ba -- te mun -- da -- te cor -- da ves -- tra fes -- ti -- na -- te fes -- ti -- na -- te ac -- cu -- ba -- te ac -- cu -- ba -- te Co -- me -- di -- te su -- men -- da vo -- bis pro -- po -- ni -- tur i -- psa -- met mun -- di sa -- lus "&" os -- ti -- a il -- le vos in -- vi -- tat il -- le il -- le qui ci -- bus qui ci -- bus vo -- bis il -- le il -- le qui ci -- bus vo -- bis fac -- tus est il -- le vos in -- vi -- tat il -- le il -- le cum vo -- bis cum vo -- bis ac -- cu -- bat ad e -- pu -- lus il -- le il -- le qui se no -- bis æ -- den -- dum to -- tum pa -- rat ò da -- pes a -- ma -- tas ò da -- pes con -- cu -- pi -- scen -- ti a -- ni -- mo fla -- gi -- ta -- tas ò in -- di -- ces a -- mo -- ris quid ah quid ah quid ah ah quid hu -- ic a -- mo -- ri tu -- o pos -- sim re -- fe -- re_ah quid ah ah quid hu -- ic a -- mo -- ri tu -- o pes -- sum re -- fer -- re ò Dul -- cis -- si -- me Dul -- cis -- si -- me ah quid hu -- ic a -- mo -- ri tu -- o hu -- ic hu -- ic a -- mo -- ri tuo ah quid hu -- ic a -- mo -- ri tu -- o pros -- sim re -- fer -- re ò Dul -- cis -- si -- me \markup {\smallCaps "Ie"} -- \markup {\smallCaps "su"} ha -- ve me -- um cor quod ti -- bi nunc di -- ca -- tum ti -- bi se -- pi -- us di -- ca -- bo ha -- ve me -- um cor me -- um cor quod ti -- bi nun di -- ca -- tum ti -- bi se -- pi -- us di -- ca -- bo.
}

staffTenore = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 180 
	\set Staff.instrumentName="Tenore"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef "G_8"
	\relative c' { 	
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			d\breve |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d2\fermata r |
			\set Score.measureLength = #(ly:make-moment 4 2)
			d\breve |
			\set Score.measureLength = #(ly:make-moment 4 4)
			d1\fermata |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r2 d d1 |
			d1. h2 |
			a2. a4 g1\fermata |
			g2 r4 c d2. d4 |
			c2 a r4 d2 d4 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			e2. e4 |
			\time 3/1
			\tempo 1=180
			\set Score.measureLength = #(ly:make-moment 3 1)
			d\breve a1 |
			\set Score.measureLength = #(ly:make-moment 6 1)
			fis1 d a' fis d d' |
			h1. h2 a h g1. g2 fis g |
			e1 e e' c1. c2 h c |
			a1. a2 g a fis1. fis2 e fis |
			d1 d e2 fis g1 g g' |
			e1. e2 d e c1. c2 h c |
			a1. a2 g a fis1 fis g2 a |
			h1 h h2 c d1 d\breve |
			\time 2/2
			\tempo 4=180
			\set Score.measureLength = #(ly:make-moment 3 1)
			d1 e2. e4 d1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r4 a a4. g8 h2 h4 d |
			g,2. g4 a1 |
			r4 a4. a8 d4 h2. a4 |
			g1 a2. g4 |
			a2. a4 g1\fermata |
			\time 3/1
			\tempo 1=180
			\set Score.measureLength = #(ly:make-moment 9 1)
			r1 g e a\breve g1 fis\breve fis1 |
			\set Score.measureLength = #(ly:make-moment 6 1)
			r h g c c h |
			a d c h\breve a1 |
			g\breve g1 r e' c |
			f f e d\breve e1 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			c\breve c1 |
			\time 4/4
			\tempo 4=180
			d2. d4 |
			c1 |
			\time 3/1
			\tempo 1=180
			\set Score.measureLength = #(ly:make-moment 3 1)
			r1 g e |
			\time 3/1
			\tempo 1=180
			\set Score.measureLength = #(ly:make-moment 6 1)
			a\breve g1 fis\breve fis1 |
			r1 h g c c h |
			a d c h\breve a1 |
			g1. g2 f f e1. e2 e1 |
			r c' a d1. c2 c h |
			\set Score.measureLength = #(ly:make-moment 3 1)
			h1. h2 c1 |
			\time 4/4
			\tempo 4=180
			a4. h8 c4 c |
			\set Score.measureLength = #(ly:make-moment 4 2)
			c2\melisma h\melismaEnd c1 |
			r2 e gis, gis4 gis |
			\set Score.measureLength = #(ly:make-moment 4 1)
			a1 h r2 e h h |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r8 h h h h4. h8 a4. a8 a4 a8 gis |
			a1 h |
			e4\melisma f2.\melismaEnd a,4. a8 a4 a |
			a2\melisma gis\melismaEnd a1 |
			\time 3/1
			\tempo 1=180
			\set Score.measureLength = #(ly:make-moment 6 1)
			e1 a\breve fis1 d'\breve |
			h\breve. d1 g\breve |
			e\breve. c1 c c |
			\set Score.measureLength = #(ly:make-moment 9 1)
			c h\breve\trill a1 a a\breve g1 g |
			\set Score.measureLength = #(ly:make-moment 6 1)
			fis1 d'\breve h1 gis\breve |
			e'\breve. fis, |
			d'1 d d d1 c\breve\trill |
			h1 h h\breve a1 a |
			\time 4/4
			\tempo 4=180
			\set Score.measureLength = #(ly:make-moment 4 2)
			gis4 gis a1 a2 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			fis4. fis8 fis4 h |
			\set Score.measureLength = #(ly:make-moment 4 2)
			gis4 gis8 gis e'2 a,1 |
			\time 3/1
			\tempo 1=180
			\set Score.measureLength = #(ly:make-moment 6 1)
			d1 d d d c\breve |
			h1 h e2 e e1. e2 e1 |
			e1 d\breve cis1 fis\breve |
			d\breve. d1 d d |
			d cis\breve\trill h h1 |
			h1. h2 a1 cis\breve cis1 |
			\time 2/2
			\tempo 4=180
			\set Score.measureLength = #(ly:make-moment 4 2)
			d2. d4 h2 d4 d |
			d2\melisma cis\melismaEnd d1 |
			e2. a,4 a2. gis4 |
			h2 r4 h e,4. e8 e4 fis |
			\set Score.measureLength = #(ly:make-moment 4 1)
			gis2 gis h2. h4 c4. h8 d4 c h1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a e'2. cis4 |
			cis2. h4 d1 |
			a2. g4 h2 r4 h |
			e,4. e8 e4 fis g2 g |
			\set Score.measureLength = #(ly:make-moment 8 1)
			h2. h4 c2. h4 d2 g, a1 g\longa |
		}

	\bar "|."
	}

}

staffBasso = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c' { 	
		\set Score.measureLength = #(ly:make-moment 4 2)
		g8 a h fis g d h fis g1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d'\fermata |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g8 a h fis g d h fis g1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d'\fermata |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d'4 c h a g fis8 e d4 c |
		h a g fis8 e d2 g |
		d'1 g,\fermata |
		c g' |
		c,2 f r4 d2 d4 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a'2. a4 |
		\time 3/1
		\tempo 1=180
		\set Score.measureLength = #(ly:make-moment 3 1)
		d,\breve d1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		d\breve d1 d\breve d1 |
		g,\breve g1 g\breve g1 |
		c\breve h1 a\breve g'1 |
		f\breve e1 d\breve c1 |
		h\breve a1 g\breve g1 |
		c\breve h1 a\breve g'1 |
		f\breve e1 d\breve c1 |
		h\breve a1 g\breve. |
		\time 2/2
		\tempo 4=180
		\set Score.measureLength = #(ly:make-moment 3 1)
		fis'1 a2. a4 d,1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d g, |
		g d' |
		d g2 fis |
		g1 d2 h |
		d1 g,\fermata |
		\time 3/1
		\tempo 1=180
		\set Score.measureLength = #(ly:make-moment 9 1)
		c\breve c1 a\breve a1 d\breve d1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		h\breve e1 c\breve. |
		f1 d\breve g f1 |
		e\breve d1 c\breve f1 |
		d\breve. g\breve e1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		f\breve e1 |
		\time 4/4
		\tempo 4=180
		g1 |
		c, |
		\time 3/1
		\tempo 1=180
		c\breve c1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		a\breve. d\breve d1 |
		h\breve e1 c\breve c1 |
		f d\breve g f1 |
		e\breve d1 c\breve h1 |
		a\breve a'1 d,\breve r1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g\breve e1 |
		\time 4/4
		f2 e |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g1 c, |
		c e |
		\set Score.measureLength = #(ly:make-moment 4 1)
		f e r2 gis gis1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		gis a |
		f e~ |
		e2 d cis1 |
		e a, |
		\time 3/1
		\tempo 1=180
		\set Score.measureLength = #(ly:make-moment 6 1)
		a\breve. d |
		g, g |
		c c |
		\set Score.measureLength = #(ly:make-moment 9 1)
		c f1 f f f e\breve |
		\set Score.measureLength = #(ly:make-moment 6 1)
		d\breve. g1 e\breve |
		cis\breve. d |
		h1 h h h a\breve |
		gis'\breve. a |
		\time 4/4
		\tempo 4=180
		\set Score.measureLength = #(ly:make-moment 4 2)
		e2 cis1 cis2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e fis |
		\time 3/1
		\tempo 1=180
		\set Score.measureLength = #(ly:make-moment 6 1)
		fis\breve. fis |
		gis gis |
		gis a |
		h h |
		h gis |
		gis a |
		\time 2/2
		\tempo 4=180
		\set Score.measureLength = #(ly:make-moment 4 2)
		fis1 g2 fis |
		a1 d, |
		a a |
		e'~ e2 a, |
		\set Score.measureLength = #(ly:make-moment 4 1)
		e'1 gis a2 d, e1 |
		a,1 a |
		a d |
		d g, |
		c2 a g1 |
		\set Score.measureLength = #(ly:make-moment 8 1)
		g1 c g d' g,\longa |
	\bar "|."
	}

}

BC = \new FiguredBass {
	\figuremode {
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		<_+>1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		<_+>1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve*2 |
		<_+>1 s1 |
		s\breve*2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		<_+>2. s4 |
		\time 3/1
		\tempo 1=180
		\set Score.measureLength = #(ly:make-moment 3 1)
		<_+>\breve s1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		<_+>\breve s1 <_+>\breve s1 |
		s\longa.*7 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve <_+>1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		<_+>1 s1 |
		s1 <_+>1 |
		s\breve |
		s1 <_+>2 s2 |
		<_+>1 s |
		\time 3/1
		\tempo 1=180
		\set Score.measureLength = #(ly:make-moment 9 1)
		s\longa. <_+>\breve s1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\longa.*4 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve. |
		\time 4/4
		\tempo 4=180
		s1*2 |
		\time 3/1
		\tempo 1=180
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve. |
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\longa.*4 |
		s\breve. <_+>\breve s1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve. |
		\time 4/4
		\tempo 4=180
		s1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		s1 <_+>1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		s1 <_+>1 s\breve |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		s1 <_+>1 |
		<_+>2 s2 s1 |
		s\breve |
		\time 3/1
		\tempo 1=180
		\set Score.measureLength = #(ly:make-moment 6 1)
		<_+>\breve. <_+>\breve. |
		s\longa.*2 |
		\set Score.measureLength = #(ly:make-moment 9 1)
		s1*9 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\breve. <_+>\breve. |
		s\longa.*3 |
		\time 4/4
		\tempo 4=180
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		<_+>1 s1 |
		\time 3/1
		\tempo 1=180
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\longa.*5 |
		s\breve. <_+>\breve. |
		\time 2/2
		\tempo 4=180
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		s1 <_+>1 |
		s\breve |
		<_+>1 <_+>2 s2 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		<_+>1 s1 s <_+>1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		<_+>1 <_+>1 |
		<_+>1 <_+>1 |
		<_+>1 s1 |
		s\breve |
		\set Score.measureLength = #(ly:make-moment 8 1)
		s1*8 |
	\bar "|."
	}
}

\score {
	<<
		\staffTenore
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verse }
		
		\staffBasso
		\BC
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

