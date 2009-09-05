\version "2.12.2"

\header {
	title = "Sancta Maria"
	composer = "Arcangelo Crotti (15??-1606)"
	mutopiatitle = "Sancta Maria"
	mutopiacomposer = "CrottiA"
	mutopiainstrument = "Voice (S), 2 Cornetts (Violins), Trombone, Basso Continuo"
	source = "Il Primo Libro de' Concerti Ecclesiastici à 1. à 2. à 3 à 4. & à 5. Parte con voci sole, & parte con voci, & Instrumenti di Fr. Archangelo Crotti da Ferrara Agostiniano Eremita Osseruante. Nuouamente composti & dati in luce. - In Venezia, Appresso Giacomo Vincenti 1608."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns/"

 footer = "Mutopia-2009/09/05-1697"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Sanc -- ta Ma -- ri -- a o -- ra pro no -- bis Sanc -- ta Ma -- ri -- a o -- ra pro no -- bis Sanc -- ta Ma -- ri -- a o -- ra pro no -- bis Sanc -- ta Ma -- ri -- a o -- ra pro no -- bis Sanc -- ta Ma -- ri -- a o -- ra pro no -- bis Sanc -- ta Ma -- ri -- a o -- ra pro no -- bis Sanc -- ta Ma -- ri -- a o -- ra pro no -- bis Sanc -- ta Ma -- ri -- a o -- ra pro no -- bis o -- ra pro no -- bis.
}
 

staffSoprano = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 160 
	\set Staff.instrumentName="Soprano"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*2 |
			g1 |
			g2 g |
			a1 |
			f |
			f |
			e2 fis |
			g1 g |
			R1*2 |
			g1 |
			g2 g |
			a1 |
			f |
			f |
			e2 fis |
			g1 |
			g |
			R1*2 |
			g1 |
			g2 g |
			a1 |
			f |
			f |
			e2 fis |
			g1 |
			g |
			R1*2 |
			g1 |
			g2 g |
			a1 |
			f |
			f |
			e2 fis |
			g1 |
			g |
			R1*2 |
			g1 |
			g2 g |
			a1 |
			f |
			f |
			e2 fis |
			g1 |
			g |
			R1*2 |
			g1 |
			g2 g |
			a1 |
			f |
			f |
			e2 fis |
			g1 |
			g |
			R1*2 |
			g1 |
			g2 g |
			a1 |
			f |
			f |
			e2 fis |
			g1 |
			g |
			R1*2 |
			g1 |
			g2 g |
			a1 |
			f |
			f |
			e2 fis |
			g1 |
			g |
			R1*2 |
			fis1 |
			g2 g |
			fis4\melisma g2 fis4\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 4 1)
			g\longa
		}

	\bar "|."
	}

}
staffViolinoI = \new Staff  {
	\set Staff.instrumentName="Cornetto I"
	\set Staff.midiInstrument="trombone"
	\key c \major
	\clef treble
	\relative c'' { 	
		d4 d8 d c4 c |
		h2 a |
		d4 d8 d c2 |
		c4 c8 c h2 |
		c1 |
		d |
		a4 g a h |
		c1 |
		h4 c d e |
		h c d e |
		d2 d2~ d4 c8 h a2 |
		h4 a h c |
		d2 h4 c |
		d2 d2 |
		a4 h c2 |
		a2 a~ |
		a a |
		h8 a h c d4 d8 c |
		h4 h8 a g2 |
		e' e8 d c h |
		a2. a4 |
		h a g f |
		e8 f g a h2 |
		d4 c8 h a4 a |
		a g f g |
		a2 .h4 |
		c2 c8 h c d |
		e2 e,8 f g a |
		h1 |
		a4 c h4. h8 |
		a2. a4 |
		h c d d8 c |
		h1 |
		r4 a h c |
		d2 r4 a |
		d c d c8 h |
		e2 d~ |
		d4 d c d |
		e2. d8 c |
		h2. h4 |
		cis1 |
		d8 c h4 e2 |
		e4 e8 e d4 d8 e |
		f2 f,4 f8 g |
		a2 a |
		r a~ |
		a a |
		h4 a h c |
		d e h c |
		h2. a8 g |
		fis4 g g fis |
		g2 r4 a |
		h c d d,8 e |
		f4 f f g |
		a2. h8 c |
		d2 a8 h c d |
		e2 d |
		d h8 a h c |
		d4 d8 c h4 h8 a |
		g4 c c8 h a g |
		fis4 g g fis |
		g a h8 cis d4 |
		e2 d4 d,8 e |
		f g a h c2 |
		d1 |
		c2. h4 |
		a2 a8 g a h |
		c2 c,8 d e f |
		g2 r4 g |
		fis a g2 |
		fis4 g g fis |
		g a h c |
		d2 r |
		r r4 a |
		h c d c8 h |
		a1 |
		c2 a |
		h r4 d |
		c2. h8 a |
		gis4 a a gis |
		a1 |
		a |
		h8 a h c d2 |
		d1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		d\longa |
	\bar "|."
	}

}
staffViolinoII = \new Staff  {
	\set Staff.instrumentName="Cornetto II"
	\set Staff.midiInstrument="trombone"
	\key c \major
	\clef treble
	\relative c'' { 	
		R1 |
		d4 d8 d c4 c |
		h2 e |
		e4 e8 e d4 d8 e |
		f2 f,4 f8 g |
		a2 a |
		r a~ |
		a a |
		h4 a h c |
		d e h c |
		h2. a8 g |
		fis4 g g fis |
		g2 r4 a |
		h c d d,8 e |
		f4 f f g |
		a2. h8 c |
		d2 a8 h c d |
		e2 d |
		d h8 a h c |
		d4 d8 c h4 h8 a |
		g4 c c8 h a g |
		fis4 g g fis |
		h a h8 cis d4 |
		e2 d4 d,8 e |
		f g a h c2 |
		d1 |
		c2. h4 |
		a2 a8 g a h |
		c2 c,8 d e f |
		g2 r4 g |
		fis a g2 |
		fis4 g g fis |
		g a h c |
		d2 r |
		r r4 a |
		h c d c8 h |
		a1 |
		c2 a |
		h r4 d |
		c2. h8 a |
		gis4 a a gis |
		a1 |
		r4 d c2 |
		c4 c8 c h2 |
		c1 |
		d |
		a4 g a h |
		c1 |
		h4 c d e |
		h c d e |
		d2 d~ |
		d4 c8 h a2 |
		h4 a h c |
		d2 h4 c |
		d2. d4 |
		a h c2 |
		a a~ |
		a a |
		h8 a h c d4 d8 c |
		h4 h8 a g2 |
		e' e8 d c h |
		a2. a4 |
		h a g f |
		e8 f g a h2 |
		d4 c8 h a4 a~ |
		a g f g |
		a2. h4 |
		c2 c8 h c d |
		e2 e,8 f g a |
		h1 |
		a4 c h4. h8 |
		a2. a4 |
		h c d d8 c |
		h1 |
		r4 a h c |
		d2 r4 a |
		d c d c8 h |
		e2 d2~ |
		d4 d c d |
		e2. d8 c |
		h2. h4 |
		cis1 |
		d |
		d2 h8 a h g |
		a4 h a2 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		h\longa |
	\bar "|."
	}

}
staffTromba = \new Staff  {
	\set Staff.instrumentName="Trombone"
	\set Staff.midiInstrument="trombone"
	\key c \major
	\clef bass
	\relative c { 	
		R1 |
		g4 g8 g a4 a |
		h2 c4 d |
		e f g2 |
		f2. e4 |
		d c d e |
		f e f g |
		a1 |
		g |
		g |
		g2. f8 e |
		d1 |
		g, |
		g'2. g4 |
		d d d e |
		f4. g8 a2 |
		d,1 |
		cis2 d |
		g,1 |
		g |
		c |
		d |
		g4 f e d |
		c8 d e f g4 f8 e |
		d e f g a4 a, |
		d2. e4 |
		f e f g |
		a8 g f e d2 |
		c1 |
		g4 a h c |
		d a h4. c8 |
		d1 |
		g, |
		g'4 g8 f e4 c |
		f1 |
		d |
		d |
		a2 d |
		g,1 |
		c2. d4 |
		e1 |
		a, |
		g2 c4 d |
		e f g2 |
		f2. e4 |
		d c d e |
		f e f g |
		a1 |
		g |
		g |
		g2. f8 e |
		d1 |
		g, |
		g'2. g4 |
		d d d e |
		f4. g8 a2 |
		d,1 |
		cis2 d |
		g,1 |
		g |
		c |
		d |
		g4 f e d |
		c8 d e f g4 f8 e |
		d e f g a4 a, |
		d2. e4 |
		f e f g |
		a8 g f e d2 |
		c1 |
		g4 a h c |
		d a h4. c8 |
		d1 |
		g, |
		g'4 g8 f e4 c |
		f1 |
		d |
		d |
		a2 d |
		g,1 |
		c2. d4 |
		e1 |
		a, |
		d |
		g,2 g |
		d'1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		g,\longa |
	\bar "|."
	}

}
staffBasso = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c'' { 	
		\clef treble
		d4 d8 d c4 c |
		\clef bass
		g,, g8 g a4 a |
		h2 c4 d |
		e f g2 |
		f2. e4 |
		d4 c d e |
		f e f g |
		a1 |
		g |
		g |
		g2. f8 e |
		d1 |
		g, |
		g'2. g4 |
		d d d e |
		f4. g8 a2 |
		d,1 |
		cis2 d |
		g,1 |
		g |
		c |
		d |
		g4 f e d |
		c8 d e f g4 f8 e |
		d e f g a4 a, |
		d2. e4 |
		f4 e f g |
		a8 g f e d2 |
		c1 |
		g4 a h c |
		d a h4. c8 |
		d1 |
		g, |
		g'4 g8 f e4 c |
		f1 |
		d |
		d |
		a2 d |
		g,1 |
		c2. d4 |
		e1 |
		a, |
		g2 c4 d |
		e f g2 |
		f2. e4 |
		d c d e |
		f e f g |
		a1 |
		g |
		g |
		g2. f8 e |
		d1 |
		g, |
		g'2. g4 |
		d d d e |
		f4. g8 a2 |
		d,1 |
		cis2 d |
		g,1 |
		g |
		c |
		d |
		g4 f e d |
		c8 d e f g4 f8 e |
		d e f g a4 a, |
		d2. e4 |
		f e f g |
		a8 g f e d2 |
		c1 |
		g4 a h c |
		d a h4. c8 |
		d1 |
		g, |
		g'4 g8 f e4 c |
		f1 |
		d |
		d |
		a2 d |
		g,1 |
		c2. d4 |
		e1 |
		a, |
		d |
		g,2 g |
		d'1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		g,\longa |
	\bar "|."
	}

}


\score {
	<<
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
		\staffViolinoI
		\staffViolinoII
		\staffTromba
		\staffBasso
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

