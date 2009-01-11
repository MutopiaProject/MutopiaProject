% Created on Fri Jan 18 22:06:06 CET 2008
\version "2.10.33"

\header {
	title = "Al tardar della vendetta"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Al tardar della vendetta , Aria from Deidamia"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Paolo Antonio Rolli (1687-1765)"
	mutopiaopus = "HWV 42"
	mutopiainstrument = "Voice (Bass), String Ensemble, Basso Continuo"
	date = "1740"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 94, 1885"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1307"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Al tar -- dar del -- la ven -- det -- ta o la scor -- da, o non l'a -- spet -- ta, o la scor -- da, o non l'a -- spet -- ta, e sen ri -- de l'of -- fen -- sor, sen ri -- de, sen ri -- de! al tar -- dar del -- la ven -- det -- ta o la scor -- da, o non l'a -- spet -- ta, e sen ri -- de l'of -- fen -- sor, o la scor -- da, o non l'a -- spet -- ta, e sen ri -- de l'of -- fen -- sor, o la scor -- da, o non l'a -- spet -- to, al tar -- dar del -- la ven -- det -- ta o la scor -- da, o non l'a -- spet -- ta,  e sen ri -- de l'of -- fen -- sor, o la scor -- da,_o non l'a -- spet -- ta, e sen ri -- de l'of -- fen -- sor, o la scor -- da, o non l'a -- spet -- to, e sen ri -- de l'of -- fen -- sor.
A fin l'em -- pio scor -- ger suo -- le, scor -- ger suo -- le, che_in e -- sem -- pio_il Ciel lo vuo -- le ga -- sti -- ga -- to dell' er -- ror, che in e -- sem -- pio_il Ciel lo vuo -- le ga -- sti -- ga -- to, al fin l'em -- pio scor -- ger suo -- le, che_in e -- sem -- pio_il Ciel lo vuo -- le ga -- sti -- ga -- to dell' er -- ror, il Ciel lo vuo -- le ga -- sti -- ga -- to dell' er -- ror.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c'' {
		f2 e |
		f d |
		c4 a g2 |
		f4 r r2 |
		r8 c' c16 d c8 d d d16 e d8 |
		e g, g16 a g8 c4 f, |
		r8 f' f16 g f8 g g g16 a g8 |
		a h c2 h4 |
		c8 g g16 a g8 a e e16 f e8 |
		f c' c16 d c8 d a a16 b a8 |
		b8 d, d16 e d8 g d g8. f16 |
		e8 b' a g a4 g8. f16 \mark \markup { \musicglyph #"scripts.segno" } |
		f4 r r2 |
		r2 r8 f, f16 g f8 |
		g g c16 d c8 b a b16 c b8 |
		a c c16 d c8 f4 r |
		r8 e e16 f e8 e4 r |
		r8 e f16 g f8 f4 r4 |
		r8 a, b16 c b8 b4 r4 |
		r8 b c16 d c8 c4 r |
		R1 |
		r8 g' g16 a g8 g g, g16 a g8 |
		g g' g16 a g8 g16 a g8 g16 a g8 |
		g g, g16 a g8 g16 a g8 g16 a g8 |
		g4 r r2 |
		r8 f' f16 g f8 g g g16 a g8 |
		a h c2 h4 |
		c8 g g16 a g8 c4 r |
		r8 d, d16 e d8 b'4 r |
		r8 c, c16 d c8 a'4 r |
		R1 |
		r8 g, g16 a g8 g4 r |
		R1 |
		f'2 d |
		c1 |
		a'2 f |
		b g |
		c a |
		f r8 f f16 g f8 |
		g g g16 a g8 a a a16 b a8 |
		b b, b16 c b8 a a' a16 b a8 |
		g4. f8 e d c b |
		a f' f16 g f8 f16 g f8 f16 g f8 |
		f 8 c c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d c8 |
		a' f c4 r2 |
		R1*3 |
		r8 c c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d e8 |
		a,4 r r2 |
		f'2 e |
		f d |
		c4 a g2 |
		f2. e4 |
		r8 c' c16 d c8 d d d16 e d8 |
		e8 g, c4 r8 e g b |
		a c, f4 r8 c f a |
		g c, e4 r8 g c, b' |
		a4 g8 f e4. f8 |
		f c a c f,2\fermata |
		R1*6 |
		r2 r8 d e fis |
		g fis g a b a b c |
		d4 g, d'2~ |
		d1~ |
		d4. d8 c h a gis |
		a4 e h' e, |
		c' e, d' e, |
		e' d8 c h a gis fis |
		e4 r r2 |
		R1*3 |
		c2 a |
		r8 f'' f16 g f8 g g g16 a g8 |
		a h c2 h4 |
		c8 g g16 a g8 a e e16 f e8 |
		f a, a16 b a8 d4 r |
		r8 d d16 e d8 b' b, b'4~ |
		b8 b, b'4~ b8 b, b'4~ |
		b8 g a b g4. f8 |
		f4 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.S." }
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c'' {
		r8 a a16 b a8 b b b16 c b8 |
		c a b c f,4 b~ |
		b8 a c, f f4 e |
		r8 f f16 g f8 g g g16 a g8 |
		a4 r8 a h h h16 c h8 |
		c4 r r8 c c16 d c8 |
		d d d16 e d8 e e e16 f e8 |
		f4 r8 c d d d16 e d8 |
		e4 c r8 c c c |
		a4 f' r8 d d d |
		d b b16 c b8 b4 r8 b |
		g g' f4 f e |
		f r r2 |
		r8 c, c16 d c8 d4 r8 d |
		e16 f e8 f f f4 e |
		f8 a a16 b a8 a4 r |
		r8 g g16 a g8 g4 r |
		r8 g a16 b a8 a4 r |
		r8 f g16 a g8 g4 r |
		r8 g f f f4 r |
		R1 |
		r8 e' e16 f e8 e e, e16 f e8 |
		e e' e16 f e8 e16 f e8 e16 f e8 |
		e e, e16 f e8 e16 f e8 e16 f e8 |
		e4 r r8 c' c16 d c8 |
		d8 d d16 e d8 e e e16 f e8 |
		f4 r8 c d d d16 e d8 |
		e e e16 f e8 a4 r |
		r8 b, b16 c b8 g'4 r |
		r8 a, a16 b a8 f'4 r |
		R1 |
		r8 e, e16 f e8 e4 r |
		c'2 a |
		b1 |
		g'2 e |
		f d |
		g e |
		c1 |
		r8 a a16 b a8 b4 r |
		r8 b b16 c b8 c c c16 d c8 |
		d d e16 f e8 f c f4~ |
		f8 f e d c b a g |
		f f' f16 g f8 f16 g f8 f16 g f8 |
		f8 c c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d c8 |
		a'8 f c4 r2 |
		R1*3 |
		r8 c c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d e8 |
		f,4 r r2 |
		a2 b |
		c f, |
		e4 f2 e4 |
		r8 f f16 g f8 g g g16 a g8 |
		a a a16 b a8 h h h16 c h8 |
		c c c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d c8 |
		c16 d c8 c16 d c8 c16 d c8 c16 d c8 |
		c4 b8 a g4 c |
		f,2\fermata r |
		R1*6 |
		r2 r8 d e fis |
		g fis g a b a b c |
		d4 g, d'2~ |
		d1~ |
		d4. d8 c h a gis |
		a4 e h' e, |
		c' e, d' e, |
		e' d8 c h a gis fis |
		e4 r r2 |
		R1*3 |
		r2 r8 c' c16 d c8 |
		d d d16 e d8 e e e16 f e8 |
		f4 r8 c d d d16 e d8 |
		e4 c r8 c b b |
		a4 r r8 a a16 b a8 |
		b4 r r8 d d16 e d8 |
		e e e16 f e8 f f f16 g f8 |
		g e f d e4. f8 |
		f4
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key f \major
	\clef alto
	\relative c' {
		r8 c c c g' g g g |
		f4 r r8 f e f |
		g f f4 d c |
		a f'2 e4 |
		f2 d |
		c8 e e16 f e8 f4 r |
		r8 b b b b b, b b |
		c4 g' r8 f f16 g f8 |
		g4 e r8 a a a |
		f4 r r8 f f f |
		d g g g d' d, d16 e d8 |
		g c c d c4 g |
		a r r2 |
		R1*2 |
		r8 f f f c'4 r |
		r8 c c c c,4 r |
		r8 c c c c'4 r |
		r8 a e e e4 r |
		r8 r a16 b a8 a4 r |
		R1 |
		r8 c c c c4 r |
		r2 r8 c c c |
		c4 r r8 c, c c |
		c e e16 f e8 f4 r |
		r8 b b b b b, b b |
		c4 g' r8 f f16 g f8 |
		g c c c f,4 r |
		r8 g g g e'4 r |
		r8 f, f f f4 r |
		R1
		r8 c c c c4 r |
		r2 c |
		d1 |
		g2 a |
		c b |
		d e, |
		f1 |
		r8 c' c16 d c8 d4 r |
		r2 r8 es, es16 f es8 |
		f g g16 a g8 c,4 c'~ |
		c g~ g e8 c |
		f,4 g8 a b4 a8 g |
		a g f4 r g8 b |
		a g f4 r g8 b |
		a8. g16 f4 r g8 b |
		a8. b16 g8. b16 a8 b g c |
		f4 r r2 |
		R1*3 |
		r2 r4 g,8 b |
		a g f4 r8 g a b |
		a g f4 r a8 c |
		f4 r r2 |
		c'2 g |
		r8 c, c16 d c8 d d d16 e d8 |
		g4 f8 c d4 c8 b |
		c a d c d4 c |
		c4. c8 f4 g |
		g r8 g e4 r8 g |
		f a a16 b a8 f4 a |
		e r8 g e4 g |
		f d' c4. c,8 |
		c2\fermata r2 |
		R1*18 |
		r8 e e16 f e8 f4 r |
		b,2 r8 b' b b |
		c4 g r8 f f16 g f8 |
		g4 e r8 a g g |
		f4 r r8 d d d |
		g4 r r8 g g g |
		g g g g f f d d |
		c c' c d g,4 c |
		a
	\bar "|."
	}

}
staffBass = \new Staff  {
	\set Staff.instrumentName="Fenice"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef bass
	\relative c {
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R1*12 |
			f2 e |
			f d' |
			c4 a g2 |
			f r4 f8 f |
			g4 c, r8 g' a b |
			a[ g] f4 r a8 a |
			b[ a] g4 r8 b c d |
			c[ b] a4 r c8 f, |
			d'8.[ c16] c8.[ b16] b8.[ a16] a8.[ g16] |
			g2 r4 c |
			c4 g r c |
			c c, r2 |
			c' a |
			b g |
			f4 e d2 |
			c r4 c'8 a |
			d4 g, r8 b a g |
			c4 f, r a8 f |
			b8.[ a16] a8.[ g16] g8.[ f16] f8.[ g16] |
			c,2 r4 c'8 b |
			a4 a r8 g f e |
			d4 d r g8 f |
			e4 e r a8 g |
			f2 r4 b8 a |
			g4 g r8 g c b |
			a[ g] f4 r2 |
			f'2 d |
			es c |
			b4 g f2 |
			c r4 c8 e |
			f4 g8 a b4 a8[ g] |
			a[ g] f4 r g8 b |
			a[ g] f4 r g8 b |
			a8.[\melisma g16] f4\melismaEnd r g8 b |
			a8. b16 g8. b16 a8 b g c |
			f4 f,8[ g] a4 g8[ f] |
			f4\melisma d'8[ c] d[ f, e d] |
			e4 c'8[ h] c[ e, d  c] |
			d[ d'16 c b8 a] g[ f e d] |
			c2\melismaEnd r4 g'8 b |
			a[ g] f4 r8 g a b |
			a[ g] f4 r a8 c |
			f4\fermata f, a\melisma g8.\melismaEnd f16 |
			f2 r |
			R1*8 |
			r2 r4 f8 g |
			a4 g8[ f] b4 a8[ g] |
			d'4 a b a8[ g] |
			a[ f] d4 r b'8 a |
			g4. b8 a4. g8 |
			fis8[ e] d4 r d'8 c |
			b4 a8[ g] fis4. g8 |
			g2 r8 d e fis |
			g fis g a b a b c |
			d4 g, r d'8 c |
			b[ a] b2 b8 a |
			gis4 gis r a8 gis |
			a4 e h' e, |
			c' e, d' e, |
			e' d8[ c] h[ a] gis[ fis] |
			e2 r8 e e' d |
			c4 h r c8 gis |
			a4 d c\melisma h8.\melismaEnd a16 |
			a1 |
			R1*8 |
			r4
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c { 	
		r8 f f16 g f8 g g g16 a g8 |
		a f g a b a g f |
		e f a, d b g c c, |
		f4 r r2 |
		R1 |
		c''2 a |
		b g |
		f4 e d2 |
		c r8 c' c16 d c8 |
		d a a16 b a8 b f f16 g f8 |
		g4 r r8 b, b16 c b8 |
		c e f b c4 c, |
		f r8 d c4 b |
		a a' d2 |
		c4 a g2 |
		f r |
		c r |
		f, r |
		g r |
		a r4 a' |
		b a g f |
		c2 r |
		c r |
		c r |
		c' a |
		b g |
		f4 e d2 |
		c a4 f' |
		b,2 r |
		a r4 d |
		g, a b g |
		c2 r4 c'8 b |
		a4 a r8 g f e |
		d4 d r g8 f |
		e4 e r a8 g |
		f2 r4 b8 a |
		g4 g r8 g c b |
		a g f4 r2 |
		f' d |
		es c |
		b4 g f2 |
		c r4 c8 e |
		f4 c d e |
		f f, r e' |
		f f, r e' |
		f f, r e' |
		f e f e |
		f a,8 b c4 c, |
		f f' r8 f e d |
		e4 e, r8 e' d c |
		d4 d, r b' |
		c4 c, r e' |
		f f, r e' |
		f f, r f'8 e |
		d4. b8 c4 c, |
		r8 f' f16 g f8 g g g16 a g8 |
		a a a16 b a8 b b b16 c b8 |
		c16 d c8 d a b16 c b8 c g |
		a f b a g b c c, |
		f c f e d4 g |
		c8 c, e g c4 e, |
		r8 f a f a,4 f |
		r8 e' g e c4 e |
		f b c c, |
		f2\fermata r4 d8 e |
		f4 d g g, |
		f f' g g, |
		d' f8 e d4 d, |
		r es'8 d c4 c, |
		r d'8 c b4 gis |
		g c d d, |
		g2 r8 d' e fis |
		g fis g a b a b c |
		d4 g, r b,8 c |
		d4 d8 e f4 f, |
		e e' r h |
		c r gis r |
		a r h r |
		c r d r |
		e r r gis, |
		a e r e' |
		f d e e, |
		a1 |
		c'2 a |
		b g |
		f4 e d2 |
		c r8 c' c16 d c8 |
		d4 r r8 f, f16 g f8 |
		g4 r r8 b, b16 c b8 |
		c c c16 d c8 d d d16 e d8 |
		e c f b c4 c, |
		f
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffBass
		\context Lyrics = "lmelodyBas" \lyricmode  { \lyricsto "melodyBas" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

