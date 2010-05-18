\version "2.12.3"

\header {
	title = "Ave dulcissima Maria"
	composer = "Giovanni Priuli (15-16)"
	mutopiatitle = "Ave dulcissima Maria"
	mutopiacomposer = "PriuliG"
	mutopiainstrument = "Voice (S), Basso Continuo"
	date = "1625"
	source = "Raccolta di Leonardo Simonetti. - Ghirlanda sacra scielta da diuersi Eccellentissimi Compositori de uarij Motetti à Voce sola Libro Primo Opera Seconda per Leonardo Simonetti Musico nella Capella del Ser.mo Prencipe di Venezia in S. Marco. - Stampa del Gardano. In Venezia 1625."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"
 footer = "Mutopia-2010/05/17-1773"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
A -- ve Dul -- cis -- si -- ma Ma -- ri -- a ve -- ra spes u -- ni -- ca "&" vi -- ta dul -- ce re -- fri -- ge -- ri -- um "&" so -- la -- ti -- um ô Ma -- ri -- a ô Ma -- ri -- a flos vir -- gi -- num ad te cla -- ma -- mus ad te cla -- ma -- mus Fi -- li -- j E -- ve ô Ma -- ri -- a flos Vir -- gi -- num ad te cla -- ma -- mus ad te cla -- ma -- mus fi -- li -- j E -- ve do -- na no -- bis pa -- cem do -- na no -- bis pa -- cem do -- na no -- bis pa -- cem.
}

staffSoprano = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Soprano"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 4 2)
			r1 d~ |
			\set Score.measureLength = #(ly:make-moment 8 2)
			d a1. b2 f2. f4 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			f2 g a1~ |
			a a |
			r r2 d~ |
			d4 d c2 h2. h4 |
			a1 f16[\melisma e d e] f[ g a h] c[ b a b] a[ g a f]\melismaEnd |
			\set Score.measureLength = #(ly:make-moment 6 2)
			g\breve g1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			r1 r2 g\melisma |
			gis\melismaEnd a f8[\melisma e16 f] g[ a h c] d2~ |
			d\melismaEnd c16[\melisma h8.] d16[ c8.]\melismaEnd h2. h4 |
			a2 d,16[\melisma c d e] d[ e d e] f[ e f g] f[ g f g] a[ g a h] a[ h a h]\melismaEnd |
			c2. g4\melisma g16[ a h g] a[ fis g a] h[ c d h] c[ a h c] |
			d8 c16[ a h c] fis,[ g] a4.\melismaEnd a8 g1 
			r1 r2 a~ |
			\set Score.measureLength = #(ly:make-moment 6 2)
			a h c1 h |
			r2 h1 cis2 d1 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			cis4 d b16[\melisma a8.] c16[ b8.] a2.\melismaEnd a4 |
			g1 r8 g a h c2 |
			\set Score.measureLength = #(ly:make-moment 6 2)
			a8 a h c d2 h4 c4. c8 a4 b1 |
			a1 r2 d1 cis2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			e1. h4 c |
			d2~\melisma d8.[ c16] h16[ a c h] a2.\melismaEnd a4 |
			g1 r8 g a h c2 |
			\set Score.measureLength = #(ly:make-moment 6 2)
			a8 a h c d2 h4 c4. c8 a4 b1 |
			\set Score.measureLength = #(ly:make-moment 8 2)
			a1 r2 d2. a4 c1 b2 |
			\set Score.measureLength = #(ly:make-moment 4 2)
			a1 g |
			\set Score.measureLength = #(ly:make-moment 8 2)
			d4 e f g a\breve a1 |
			\set Score.measureLength = #(ly:make-moment 22 2)
			r1 d1. a2 c1. b2 a\breve g\longa |
		}

	\bar "|."
	}

}

staffBasso = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c { 	
		\set Score.measureLength = #(ly:make-moment 4 2)
		g\breve |
		\set Score.measureLength = #(ly:make-moment 8 2)
		d1 d'1. g,2 d'2. d4 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d2 b a1~ |
		a d,2 d'~ |
		d4 c c2 h2. h4 |
		a1 e' |
		a, d2 c~ |
		\set Score.measureLength = #(ly:make-moment 6 2)
		c h4 a g1 c2 c |
		\set Score.measureLength = #(ly:make-moment 4 2)
		a d c c |
		e a, d1 |
		e~ e |
		a,2 b~ b a |
		a2 e g1 |
		d' g,2 c~ |
		c h a1~ |
		\set Score.measureLength = #(ly:make-moment 6 2)
		a2 gis a1 e' |
		r2 e1 a,2 d1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		a4 fis g2 d'1 |
		g,2 r8 g a h c2 a8 a h c |
		\set Score.measureLength = #(ly:make-moment 6 2)
		d2 h8 h c d e4 a,4. a8 d4 g,1 |
		d'1 d a |
		\set Score.measureLength = #(ly:make-moment 4 2)
		gis2 a e'1 |
		h2 c d1 |
		g,2 r8 g a h c2 a8 a h c |
		\set Score.measureLength = #(ly:make-moment 6 2)
		d2 h8 h c d e4 a,4. a8 d4 g,1 |
		\set Score.measureLength = #(ly:make-moment 8 2)
		d'1 b4 c d e f2 e d1~ |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d1 g,2 g4 a |
		\set Score.measureLength = #(ly:make-moment 8 2)
		b4 c d e f1 d,4 e f g a1 |
		\set Score.measureLength = #(ly:make-moment 22 2)
		d4 e f g g2 g,4 a b c d e f d es c d\breve. g,\longa |
	\bar "|."
	}

}

BC = \new FiguredBass {
	\figuremode {
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 8 2)
		s1*4 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve*5 |
		\set Score.measureLength = #(ly:make-moment 6 2)
		s\breve. |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve*7 |
		\set Score.measureLength = #(ly:make-moment 6 2)
		s\breve.*2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve*2 |
		\set Score.measureLength = #(ly:make-moment 6 2)
		s1 s2 s4 <_+>4 <_->1 |
		<_+>1 s1 s1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve*3 |
		\set Score.measureLength = #(ly:make-moment 6 2)
		s1 s1 <_->1 |
		\set Score.measureLength = #(ly:make-moment 8 2)
		<_+>1 s1 s\breve |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 8 2)
		s1*4 |
		\set Score.measureLength = #(ly:make-moment 22 2)
		s1*11 |
	\bar "|."
	}
}

\score {
	<<
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
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

