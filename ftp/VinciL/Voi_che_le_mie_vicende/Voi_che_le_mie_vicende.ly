% Created on Tue Nov 27 19:42:26 CET 2007
\version "2.10.33"

\header {
	title = "Voi che le mie vicende"
	composer = "Leonardo Vinci (1690-1730)"
	mutopiatitle = "Voi che le mie vicende, Aria from Semiramide"
	mutopiacomposer = "VinciL"
	mutopiainstrument = "Voice (Tenor), String Ensemble, Basso Continuo"
	source = "Conservatorio S. Pietro a Majella, DM02032202162"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/12/02-1176"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Voi che le mie vi -- cen -- de voi che_i miei tor -- ti_u -- di -- te fug -- gi -- te si fug -- gi -- te qui leg -- ge non s'in -- ten -- de qui fe -- del -- tà non v'è fug -- gi -- te fug -- gi -- te qui leg -- ge non s'in -- ten -- de qui fe -- del -- tà non v'è qui fe -- del -- tà non v'è. fug -- gi -- te voi che le mie vi -- cen -- de fug -- gi -- te voi che miei tor -- ti_u -- di -- te qui leg -- ge non s'in -- ten -- de qui fe -- del -- tà non v'è non non non non non v'è qui fe -- del -- tà non v'è non qui fe -- del -- tà qui leg -- ge fug -- gi -- te qui fe -- del -- tà qui fe -- del -- tà non v'è.
E puoi ti -- ran -- no_e puoi sen -- za ros -- sor mi -- rar -- mi ti -- ran -- no sen -- za ros -- sor mi -- rar -- mi qual fe -- de_a -- vrà per voi qual fe -- de_a -- vrà per voi chi non la ser -- ba_a me chi non la ser -- ba_a me.
}
 

staffViolin = \new Staff  {
	\time 2/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 200 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		b4 b8 c d4 b |
		f'2 f, |
		g4 g8 a b4 g |
		d'2 d, |
		es8 d es f g f g a |
		b f b f d' b d b |
		f' d f d b' b, b' b, |
		g' b, g' b, b' b, b' b, |
		f' b, f'  b, b' b, b' b, |
		g' b, b' b, g' b, b' b, |
		f' b b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' |
		b4 a8 g f es d c |
		d2 c\prall |
		b4 f b,2 |
		b'4 b8 c d4 b |
		f'2 f, |
		g4 g8 a b4 g |
		d'2 d,4 d |
		es8 es es es f f f f |
		g g g g a a a a |
		b c d4 r f |
		f f f f |
		es8 c es c es c es c |
		es4 es es es |
		d f as,2 |
		g4 g' b,2 |
		a r4 f'8 f |
		d d f f c c f f |
		b, b f' f a, a d d |
		c4 b8 a b b c c |
		d d e e f f a, a |
		b2 c |
		f4 f8 g a4 f |
		c'2 c, |
		d4 d8 e f4 d |
		a'2 a, |
		b8 a b c d c d e |
		f c f c a' f a f |
		c'4 f, g f8 e |
		f4 f, r2 |
		f'1 |
		d8 b' d, b' d, b' d, b' |
		c, a' c, a' c, a' c, a' |
		c, a' c, a' c, a' c, a' |
		b4 b, r2\fermata |
		f'1 |
		d8 b' d, b' d, b' d, b' |
		c, a' c, a' c, a' c, a' |
		c, a' c, a' c, a' c, a' |
		d,8 d b b d d f f |
		g g c, c f f b, b |
		es es a, a b b d d |
		c c d d b b c c |
		a a b b g g a a |
		f f f f es es es es |
		d d f f b b es es |
		d16 c b4. c2\prall |
		b r |
		b8 b' b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' |
		b4 a8 g f es d c |
		d16 c b4. <c f,>2 |
		f8 b, f' b, b' b, b' b, |
		g' b, g' b, b' b, b' b, |
		f' b, f' b, b' b, b' b, |
		g' b, g' b, b' b, b' b, |
		f' b b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' |
		b, b' b, b' b, b' b, b' |
		b4 a8 g f es d c |
		d16 c b4. c2\prall |
		b4 f b,2 \bar "||" |
		d'4 g,8 a b4 g |
		d'2 r |
		g,4 g8 a b4 c |
		d a' a a |
		g2 g, |
		g4 g8 a b4 c |
		d2 r4\fermata d |
		f1 |
		es2 r4 es |
		es1 |
		d2 r4 d8 d |
		b b d d a a d d |
		g, g d' d f, f d' d |
		g,2 a |
		d,1\fermata |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		b8 f b f b f b f |
		a f a f a f a f |
		g es g es g es g es |
		f d f d f d f d |
		es d es f g f g a |
		b d, f d b' f b f |
		d' b d b b' b, b' b, |
		g' b, g' b, b' b, b' b, |
		f' b, f'  b, b' b, b' b, |
		g' b, g' b, g' b, g' b, |
		f'4 g f es |
		d g f es |
		d g f es |
		b' a8 g f es d c |
		d2 c\prall |
		b4 f b,2 |
		b'8 f b f b f b f |
		a f a f a f a f |
		g es g es g es g es |
		f d f d f d f d |
		es es es es f f f f |
		g g g g a a a a |
		b c d4 r d |
		d8 h d h d h d h |
		c g c g c g c g |
		c a c a c a c a |
		b b d, d es es f f |
		g g e e f f g g |
		a a f f a a a a |
		d d f f c c f f |
		b, b f' f a, a d d |
		c4 b8 a b b c c |
		d d e e f f a, a |
		b2 c |
		f8 c f c f c f c |
		e c e c e c e c |
		d b d b d b d b |
		c a c a c a c a |
		b a b c d c d e |
		f c f c f c f c |
		a'4 f g f8 e |
		f4 f, r2 |
		a8 a b b c c a a |
		b f' b, f' b, f' b, f' |
		a, f' a, f' a, f' a, f' |
		a, f' a, f' a, f' a, f' |
		d d c c b b d d |
		a a b b c c a a |
		b f' b, f' b, f' b, f' |
		a, f' a, f' a, f' a, f' |
		a, f' a, f' a, f' a, f' |
		b, b f f b b d d |
		g g c, c f f b, b |
		es es a, a b b d d |
		c c d d b b c c |
		a a b b g g a a |
		f f f f es es es es |
		d d f f b b es es |
		d16 c b4. c2\prall |
		b r |
		d4 g f es |
		d g f es |
		d g f es |
		d g f es |
		b'4 a8 g f es d c |
		d16 c b4. <c f,>2 |
		f8 b, f' b, b' b, b' b, |
		g' b, g' b, b' b, b' b, |
		f' b, f' b, b' b, b' b, |
		g' b, g' b, b' b, b' b, |
		f'4 g f es |
		d g f es |
		d g f es |
		b'4 a8 g f es d c |
		d16 c b4. c2\prall |
		b4 f b,2 \bar "||" |
		b'8 g b g b g b g |
		a f a f a f a f |
		g es g es g es g es |
		fis d fis d fis d fis d |
		g d g d g d g d |
		g es g es g es g es |
		<fis a>2 r4\fermata d' |
		d1 |
		c8 g c g c g c g |
		c1 |
		d2 r4 d8 d |
		b b d d a a d d |
		g, g d' d f, f d' d |
		g,2 a |
		d,1\fermata |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key b \major
	\clef alto
	\relative c'' {
		b8 b b b b b b b |
		a a a a a a a a |
		g g g g g g g g |
		f f f f f f f f |
		es es es es es es es es |
		d b b b b b b b |
		b b b b b b b b |
		b b b b b b b b |
		b b b b b b b b |
		b b b b b b b b |
		b b es es d d c c |
		b b es es d d c c |
		b b es es d d c c |
		b b c c d d es es |
		f2 f, |
		b1 |
		b'8 b b b b b b b |
		a a a a a a a a |
		g g g g g g g g |
		f f f f f f f f |
		es es es es f f f f |
		g g g g a a a a |
		b4 b b b |
		g8 g g, g h h g g |
		c c c c c c c c |
		a a f f a a f f |
		b b b b c c d d |
		es es c c d d e e |
		f f f f a a f f |
		b b d d a a d d |
		g, g d' d f, f d' d |
		c4 b8 a b b c c |
		d, d e e f f a a |
		b2 c |
		f,8 f f f f f f f |
		e e e e e e e e |
		d d d d d d d d |
		c c c c c c c c |
		b b b b b b b b |
		a a f' f f, f f' f |
		f, f a a b b c c |
		f,2 r |
		f'8 f g g a a f f |
		b, b c c d d b b |
		f' f, f f f f f f |
		f' f, f f f f f f |
		b b c c d d b b |
		f' f g g a a f f |
		b, b c c d d b b |
		f' f, f f f f f f |
		f' f, f f f f f f |
		b b c c d d b b |
		es es es es d d d d |
		c c c c b b b' b |
		a a b b g g a a |
		f f g g es es f f |
		d d d d c c c c |
		b b c c d d es es |
		f f f f f, f f f |
		b2 r |
		b8 b es es d d c c |
		b b es es d d c c |
		b b es es d d c c |
		b b es es d d c c |
		b b c c d d es es |
		f f f f a2\prall |
		b8 b, b b b b b b |
		b b b b b b b b |
		b b b b b b b b |
		b b b b b b b b |
		b b es es d d c c |
		b b es es d d c c |
		b b es es d d c c |
		b b c c d d es es |
		f2 a |
		b4 f b,2 \bar "||" |
		g8 g' g g g g g g |
		f f f f f f f f |
		es es es es es es es es |
		d d d d c c c c |
		b b b b b b b b |
		es es es es es es es es |
		d2 r4\fermata c |
		h1 |
		c4 c c b |
		a1 |
		b2 r4 d'8 d |
		b b d d a a d d |
		g, g d' d f, f d' d |
		g,2 a |
		d,1\fermata |
	\bar "|."
	}

}
staffTenor = \new Staff  {
	\set Staff.instrumentName="Scitalce"
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef "G_8"
	\relative c' {
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			R1*16 |
			b4 b8 c d4 b |
			f'2 f, |
			g4 g8 a b4 g |
			d'2 d,4 d |
			es2 f |
			g a |
			b8[ c] d4 r f |
			f g, g f' |
			es8[ d] c4 r es |
			es f, f es' |
			d f as,2 |
			g4 g' b,2 |
			a r4 f' |
			d4 f c f |
			b,\melisma f'\melismaEnd a, d |
			c b8[ a] b4 c |
			d e f a, |
			b2 c |
			f,1 |
			R1*6 |
			r2 r4 f' |
			f1 |
			f2 r |
			c d4 es |
			f2 c |
			d8[ c] b4 r f' |
			f1 |
			f2 r |
			c d4 es |
			f2 c |
			d8[ c] b4 r f' |
			g c, f b, |
			es2 d4 d |
			c d b c |
			a b g a |
			f2 es |
			d4 f b es4 |
			d2 c\prall |
			b f' |
			r4 g f es |
			d g f\melisma es\melismaEnd |
			d g f\melisma es\melismaEnd |
			d g f es |
			b' a8[ g] f[ es] d[ c] |
			d16[\melisma c] b4.\melismaEnd c2\prall |
			b1 |
			R1*8 |
			r2 r4 d \bar "||" |
			d g,8[ a] b4 g |
			d'2 r |
			g,4 g8 a b4 c |
			d d r d |
			g2 g, |
			g4 g8 a b4 c |
			d d r\fermata d |
			d g, g f' |
			es8[\melisma d] c4\melismaEnd r c |
			c f, f es' |
			d8[\melisma c] b4\melismaEnd r d |
			b d a d |
			g, d' f, d' |
			g,2 a |
			d,1\fermata |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key b \major
	\clef bass
	\relative c' {
		b4 b b b |
		a a a a |
		g g g g |
		f f f f |
		es es es es |
		d b' b b, |
		b b' b b, |
		es es es es |
		d d d d |
		es es es es |
		d es d c |
		b es d c |
		b es d c |
		b c d es |
		f2 f, |
		b1 |
		b'4 b b b |
		a a a a |
		g g g g |
		f f f f |
		es8 es es es f f f f |
		g g g g a a a a |
		b4 b b b |
		g g, h g |
		c c' c c, |
		a f a f |
		b b c d |
		es c d e |
		f f a f |
		b d a d |
		g, d' f, d' |
		c b8 a b4 c |
		\clef tenor d e f a, |
		b2 c |
		\clef bass f,4 f f f |
		e e e e |
		d d d d |
		c c c c |
		b b b b |
		a f' f f, |
		f a b c |
		f,1 |
		f'4 g a f |
		b c d b |
		f f, f f' |
		f f, f f' |
		b, c d b |
		f' g a f |
		b, c d b |
		f' f, f f' |
		f f, f f' |
		b, c d b |
		es es d d |
		c c b b' |
		a b g a |
		f g es f |
		d d c c |
		b c d es |
		f f f, f |
		b1 |
		b4 es d c |
		b es d c |
		b es d c |
		b es d c |
		b c d es |
		f f f, f |
		b b' b b, |
		es es es es |
		d d d d |
		es es es es |
		d es d c |
		b es d c |
		b es d c |
		b c d es |
		f f f, f |
		b2 b4\fermata a \bar "||" |
		g g' g g |
		f f f f |
		es es es es |
		d d c c |
		b b b b |
		es es es es |
		d2 r4\fermata c |
		h1 |
		c4 c c b |
		a1 |
		b2 r4 d' |
		b d a d |
		g, d' f, d' |
		g,2 a |
		d,1\fermata |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffTenor
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

