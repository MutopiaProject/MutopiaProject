\version "2.12.2"

\header {
	title = "Laudate Dominum"
	subtitle = "Voce sola Soprano ò Tenore"
	composer = "Claudio Monteverdi (1567-1643)"
	mutopiatitle = "Laudate Dominum, Motet for Soprano or Tenor"
	mutopiacomposer = "MonteverdiC"
	mutopiainstrument = "Voice (S/T), Basso Continuo"
	source = "Selva Morale e Spirituale di Claudio Monteverde Maestro di Capella della Serenissima Republica Di Venetia Dedicata alla Sacra Cesarea Maesta dell'Imperatrice Eleonora Gonzaga Con Licenza de Superiori & Priuilegio. - In Venetia 1640 Appresso Bartolomeo Magni."
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.thp.uni-due.de/~bjoerns"

 footer = "Mutopia-2010/02/01-1711"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2010. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Lau -- da -- te, lau -- da -- te Do -- mi -- num in San -- ctis e -- jus, lau -- da -- te Do -- mi -- num in San -- ctis e -- jus: lau -- da -- te, lau -- da -- te e -- um in fir -- ma -- men -- to vir -- tu -- tis e -- jus, lau -- da -- te e -- um in fir -- ma -- men -- to vir -- tu -- tis e -- jus. Lau -- da -- te, lau -- da -- te, lau -- da -- te e -- um in so -- no tu -- bæ, in so -- no, in so -- no, in so -- no tu -- bæ, in so -- no tu -- bæ, in so -- no tu -- bæ, lau -- da -- te, lau -- da -- te e -- um in psal -- te -- ri -- o, et ci -- tha -- ra, lau -- da -- te, lau -- da -- te. Lau -- da -- te, lau -- da -- te e -- um in tym -- pa -- no, lau -- da -- te e -- um in tym -- pa -- no, in tym -- pa -- no et cho -- ro, in tym -- pa -- no et cho -- ro, lau -- da -- te e -- -um, lau -- da -- te e -- um, lau -- da -- te e -- um, in cim -- ba -- lis, cim -- ba -- lis be -- ne -- so -- nan -- ti -- bus, lau -- da -- te e -- um, lau -- da -- te e -- um in cim -- ba -- lis, in cim -- ba -- lis, in cim -- ba -- lis iu -- bi -- la -- ti -- o -- ni -- bus, in cim -- ba -- lis iu -- bi -- la -- ti -- o -- ni -- bis: om -- nis Spi -- ri -- tus lau -- dat Do -- mi -- num. Al -- le -- lu -- ia, al -- le -- lu -- ia al al -- le -- lu -- i -- a, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}
 

staffCanto = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 160 
	\set Staff.instrumentName="Canto"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyCan" {
			\dynamicUp
			\autoBeamOff
			\set Score.measureLength = #(ly:make-moment 3 1)
			r2 r4 d d1 h |
			\time 3/2
			\tempo 4=360
			\set Score.measureLength = #(ly:make-moment 3 1)
			r1 d2 d1 c2 |
			h2. a4 g2 a a2. g4 |
			g2 g d' d1 c2 |
			h2. a4 g2 a a2. g4 |
			g2 g r1 r |
			R\breve.*2 |
			\set Score.measureLength = #(ly:make-moment 6 1)
			r1 r r2 d' h g d' d1 c2 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			h g d' d1 d2 |
			d2 c h a1 a2 |
			g g d' d1 c2 |
			h g d' d1 d2 |
			\set Score.measureLength = #(ly:make-moment 12 1)
			d\breve.~ d~ d~ d~ |
			\set Score.measureLength = #(ly:make-moment 3 1)
			d2 c h a1 a2 |
			g g r1 r |
			r r r2 d' |
			h g d' h g r |
			r1 r r2 g' |
			d1 d2 h g g |
			\set Score.measureLength = #(ly:make-moment 6 1)
			h1 d2 h g g h h g h g g |
			\set Score.measureLength = #(ly:make-moment 3 1)
			g1 g2 g g d |
			d1 d2 d1. |
			d1 d2 d1 d2 |
			d\breve. |
			d1 d'2 h g g' |
			e1 d2 c1 h2 |
			c1 d2 e1 e2 |
			d1 c2 h2.\melisma a4 h c |
			\set Score.measureLength = #(ly:make-moment 6 1)
			h2. a4 h c h2. e,4 fis gis a2. g4 a h a2. g4 a h |
			\set Score.measureLength = #(ly:make-moment 3 1)
			a2. g4 a h c d h2.\melismaEnd h4 |
			a1 a2 fis d d' |
			\set Score.measureLength = #(ly:make-moment 9 1)
			h g r1 r r\breve r1 r\breve r1 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			r1 r1 r2 d' |
			h g d' d1 c2 |
			h g h a1 a2 |
			g1 d'2 d1 c2 |
			h g h a1 a2 |
			g\melisma a h g a h |
			g a h c d c |
			h c d d1\trill c2 |
			h c d d1\trill c2 |
			h1\melismaEnd d2 d1 c2 |
			h1 a2 a1. |
			g1 d'2 d1 c2 |
			h1 a2 a1.\trill |
			\set Score.measureLength = #(ly:make-moment 6 1)
			g1 r r r\breve r1 |
			\set Score.measureLength = #(ly:make-moment 3 1)
			r2 g g g fis1 |
			e2 r r1 r |
			r2 h' h h a1 |
			g r r |
			r2 g' g g fis1 |
			e2 d e4\melisma d c h a2.\melismaEnd a4 |
			g1. h2\melisma a2.\melismaEnd h4 |
			c2 h c h a2. a4 |
			\set Score.measureLength = #(ly:make-moment 6 1)
			g2 h h h a\melisma h\melismaEnd g r r1 r |
			\set Score.measureLength = #(ly:make-moment 3 1)
			r2 h h h a\melisma h\melismaEnd |
			g\melisma a\melismaEnd h\melisma c\melismaEnd a h |
			g4\melisma g g g g g g g g g g4. fis8 |
			g2 a\melismaEnd h\melisma c\melismaEnd a h |
			g4\melisma g g g g g g g g g g4. fis8 |
			g2\melismaEnd a h c d\melisma e\melismaEnd |
			c h c h a2. a4 |
			\set Score.measureLength = #(ly:make-moment 6 1)
			g\breve.~ g~ |
			\set Score.measureLength = #(ly:make-moment 3 1)
			g2 a h c d1 |
			e,2 fis g g g2. fis4 |
			g\breve. |
			\time 4/4
			\tempo 4=120
			\set Score.measureLength = #(ly:make-moment 4 2)
			g1. a2 |
			h2. h4 h1 |
			\set Score.measureLength = #(ly:make-moment 4 4)
			r4 h\melisma c4. d8 |
			e1~ |
			e4 f32[ e d c h c d h] c[ a h c d c h a] gis[ gis gis gis gis gis gis fis] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			gis16[ e fis gis] a[ h c d] e8.[ f16 e8. f16] e32[ e e e e16 d32 e] f4~ f4\melismaEnd c |
			\set Score.measureLength = #(ly:make-moment 4 4)
			h2.\trill h4 |
			\time 3/2
			\tempo 4=360
			\set Score.measureLength = #(ly:make-moment 3 1)
			a\breve a2. g4 |
			fis2 d r1 d'2. c4 |
			h2 g r1 r |
			g4\melisma f e f g a h c d2.\trill c8[ d] |
			e1\melismaEnd g,4\melisma a h c d2.\trill c8[ d] |
			\set Score.measureLength = #(ly:make-moment 6 1)
			e1 e,4 f g a h2.\trill a8[ h] c1 e,4 f g a h2.\trill a8[ h] |
			\time 4/4
			\tempo 4=120
			c2 c8 d16[ e f e] d32[ c h a] |
			\set Score.measureLength = #(ly:make-moment 4 2)
			h8 h16[ c d c] h32[ a g f] g2~ g8 a16[ h c h] a32[ g f e] f16[ e d e] f32[ g a h c d e f] |
			\set Score.measureLength = #(ly:make-moment 4 4)
			g4\melismaEnd c, c4. h8 |
			\time 3/2
			\tempo 4=360
                        \set Score.measureLength = #(ly:make-moment 3 1)
			c\breve c2. h4 |
			a2 fis r1 d'2. c4 |
			\time 4/4
			\tempo 4=120
			h8 g r4 e'2~ |
			\set Score.measureLength = #(ly:make-moment 9 1)
			e4 d c8[\melisma h c a] h1\melismaEnd a d2~ d8[ e16 f16 g8] g, a1 g\longa |
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
		\set Score.measureLength = #(ly:make-moment 3 1)
		g1 d' g, |
		\time 3/2
		\tempo 4=360
		\set Score.measureLength = #(ly:make-moment 3 1)
		g g'2 fis1 fis2 |
		g1 g2 c, d1 |
		g, g'2 fis1 fis2 |
		g1 g2 c, d1 |
		g f2 e1 d2 |
		c1 h2 c d1 |
		g1. f2 e d |
		\set Score.measureLength = #(ly:make-moment 6 1)
		h c d e d1 g, g'2 fis1 fis2 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g1 g2 d1 c2 |
		h a g d'1 d2 |
		g,1 g'2 fis1 fis2 |
		g1 g2 d'1 c2 |
		\set Score.measureLength = #(ly:make-moment 12 1)
		h c d g, a h fis g a g fis e d1 c2 h c d g, a h a g fis |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g1 g2 d'1 d2 |
		g1 f2 e1 d2 |
		c1 h2 c d1 |
		g,\breve g2 g' |
		d1 d2 h g g' |
		fis1 fis2 g g g |
		\set Score.measureLength = #(ly:make-moment 6 1)
		g g g g g g g g g g g g |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g g g g g g |
		g,1 g2 g1 g2 |
		g1 g2 g1 g2 |
		g\breve. |
		g |
		c'1 h2 a1 g2 |
		a,1 h2 c1 c2 |
		d1 d2 e1 e2 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		e1 e2 e1 e2 a1 a2 a1 a2 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		a1 f2 d e1 |
		a, a2 d1 d2 |
		\set Score.measureLength = #(ly:make-moment 9 1)
		g1 f2 e1 d2 c1 h2 c d1 g1. f2 e  d |
		\set Score.measureLength = #(ly:make-moment 3 1)
		c h a g d'1 |
		g, g'2 fis1 fis2 |
		g1 g,2 d'1 d2 |
		g,1 g'2 fis1 fis2 |
		g1 g,2 d'1 d2 |
		g, g g g g g |
		g g g g g g |
		g g g g g g |
		g g g g g g |
		g1 g'2 fis1 fis2 |
		g1 c,2 d1. |
		g,1 g'2 fis1 fis2 |
		g h, c d1 d2 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		g,2 g' g g d1 e2 h1 c2 d1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g,2 g' g g d1 |
		e2 h1 c2 d1 |
		g,2 g' g g d1 |
		e2 h1 c2 d1 |
		g,2 g' g g d1 |
		e2 h1 c2 d1 |
		g,2 g' g g d1 |
		e2 h1 c2 d1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		g,2 g' g g d1 e2 h1 c2 d1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g,\breve d'1 |
		e c d |
		g,2 g' g g d1 |
		e c d |
		e2 fis g c, d1 |
		g,\breve d'1 |
		e2 d e c d1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		g,2 g' g g d1 e2 h1 c2 d1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g,2 g' g g d1 |
		e2 h1 c2 d1 |
		g,\breve. |
		\time 4/4
		\tempo 4=160
		\set Score.measureLength = #(ly:make-moment 4 2)
		c1. a2 |
		e'1 e |
		\set Score.measureLength = #(ly:make-moment 4 4)
		e2 d |
		c h |
		a2~ a |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e'~ e~ e d |
		\set Score.measureLength = #(ly:make-moment 4 4)
		e1 |
		\time 3/2
		\tempo 4=360
		\set Score.measureLength = #(ly:make-moment 3 1)
		a,\breve a1 |
		d r d |
		g,\breve r1 |
		g'\breve f1 |
		e\breve d1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		c\breve h1 a\breve gis1 |
		\time 4/4
		\tempo 4=120
		a2 f |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g e c' f |
		\set Score.measureLength = #(ly:make-moment 4 4)
		c g' |
		\time 3/2
		\tempo 4=360
                \set Score.measureLength = #(ly:make-moment 3 1)
		c,\breve a1 |
		d\breve h1 |
		\time 4/4
		\tempo 4=120
		e2 c |
		\set Score.measureLength = #(ly:make-moment 9 1)
		h a e'1 a,2. g4 fis2 g d'1 g,\longa |
	\bar "|."
	}

}

BC = \new FiguredBass {
	\figuremode {
		\set Score.measureLength = #(ly:make-moment 3 1)
		s1 <_+> s |
		\time 3/2
		\tempo 4=360
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve.*5 |
		s1. s2 <_+>1 |
		s\breve. |
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\breve.*2 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve.*4
		\set Score.measureLength = #(ly:make-moment 12 1)
		s\breve.*4 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve.*6 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\breve.*2 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve.*7 |
		s1. <_+>1 s2 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		<_+>1 <_+>2 s1 <_+>2 s\breve. |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s1. s2 <_+>1 |
		s\breve. |
		\set Score.measureLength = #(ly:make-moment 9 1)
		s\breve. s1. s2 <_+>1 s\breve. |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve <_+>1 |
		s\breve. |
		s1. <_+>1 s2 |
		s\breve. |
		s1. <_+>1 s2 |
		s\breve.*7 |
		s1. <_+>1 s2 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\breve <_+>1 s\breve <_+>1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve <_+>1 |
		s\breve. |
		s\breve <_+>1 |
		s\breve <_+>1 |
		s\breve <_+>1 |
		s\breve <_+>1 |
		s\breve <_+>1 |
		s\breve <_+>1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\breve <_+>1 s\breve <_+>1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve <_+>1 |
		s\breve. |
		s\breve <_+>1 |
		s\breve <_+>1 |
		s\breve <_+>1 |
		s\breve. |
		s\breve <_+>1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\breve <_+>1 s\breve <_+>1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		s\breve.*3 |
		\time 4/4
		\tempo 4=160
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		<_+>1 <_+>1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		<_+>2 s2 |
		s1*2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		<_+>2 <_+>2 s1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		<_+>1 |
		\time 3/2
		\tempo 4=360
		\set Score.measureLength = #(ly:make-moment 3 1)
		<_+>\breve <_+>1 |
		<_+>1 s1 <_+>1 |
		s\breve.*3 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		s\breve.*2 |
		\time 4/4
		\tempo 4=120
		s1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		s\breve |
		\set Score.measureLength = #(ly:make-moment 4 4)
		s1 |
		\time 3/2
		\tempo 4=360
                \set Score.measureLength = #(ly:make-moment 3 1)
		s\breve.*2 |
		\time 4/4
		\tempo 4=120
		s1 |
		\set Score.measureLength = #(ly:make-moment 9 1)
		s1 s\breve s\breve s\longa |
	\bar "|."
	}
}

\score {
	<<
		\staffCanto
		\context Lyrics = "lmelodyCan" \lyricmode  { \lyricsto "melodyCan" \verse }
		
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

