% Created on Tue Feb 12 20:03:56 CET 2008
\version "2.11.44"

\header {
	title = "Voglio che sia l'indegno"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Voglio che sia l'indegno, Aria from Faramondo"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 39"
	mutopiainstrument = "Voice (Soprano), String Ensemble, Basso Continuo"
	date = "1737"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 91, 1884"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoern.sothmann@rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/04/21-1393"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Vo -- glio che sia l'in -- de -- gno vit -- ti -- ma del suo sde -- gno, vo -- glio che sia l'in -- de -- gno vit -- ti -- ma del suo sde -- gno, e poi... e poi... pen -- sar degg' i -- o, ch'e -- gli_è del i -- dol mi -- o l'a -- ma -- to ge -- ni -- tor, l'a -- ma -- to, l'a -- ma -- to ge -- ni -- tor, ch'e -- gli_è dell' i -- dol mi -- o l'a -- ma -- to ge -- ni -- tor, vo -- glio che sia l'in -- de -- gno vit -- ti -- mo del suo sde -- gno, vo -- glio che sia l'in -- de -- gno vit -- ti -- ma del suo sde -- gno, e poi... e poi... pen -- ser degg' i -- o, ch'e -- gli_è dell' i -- dol mi -- o l'a -- ma -- to ge -- ni -- tor, pen -- ser degg' i -- o, pen -- ser degg' i -- o, ch'e -- gli_è dell' i -- dol mi -- o l'a -- ma -- to ge -- ni -- tor, l'a -- ma -- to ge -- ni -- tor, ch'e -- gli_è dell' i -- dol mi -- o l'a -- ma -- to ge -- ni -- tor.
Tu bra -- mi,_o Ciel in -- gra -- to! di ren -- der -- mi spie -- ta -- to a' dan -- ni del cru -- del, a' dan -- ni del cru -- del, ma di vir -- tù fe -- del, ma di vir -- tù fe -- del non me'l per -- met -- te_a -- mor, tu bra -- mi,_o Ciel in -- gra -- to, a ren -- der -- mi spie -- ta -- to, ma di vir -- tù fe -- del non me'l per -- met -- te_a -- mor.
}
 

staffViolinoI = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key g \minor
	\clef treble
	\relative c''' {
		g8 f16 es d c b a g8 f16 es d c b a |
		g8 g' a, fis' g g, r4 |
		b''8 a16 g f es d c b8 a16 g f es d c |
		b8 b' c, a' b b, r4 |
		d''8 c16 b a g fis e d8 c16 b a g fis e |
		d8 es16 d c b a g d'4 r8 d' |
		cis a d, c' h g b g' |
		fis a, f' d e g, es' c |
		d fis, g c, d fis' g c, |
		b4 a8. g16 g4 r |
		R1 |
		g'8 f16 es d c b a g8 f16 es d c b a |
		g4 r r2 |
		b8 c16 d es f g a b8 c16 d es f g a |
		b4 r r2 |
		f8 e16 d c b a g f8 c'16 b a g f es |
		d4 r r2 |
		a'4 r d r |
		d, r d' r |
		a r g r |
		fis r g r |
		fis r r2 |
		R1 |
		r2 r4 r8 g' |
		fis a, f' d e g, es' c |
		d fis, g c, d4 r |
		R1 |
		r4 c d c |
		g' c, d c |
		d8 b b c d g g e |
		f a a c c a a f |
		f d d d' d b b g |
		g c c g g c c g |
		f c' c f, f c' c f, |
		f b b f f b b f |
		e b' b e, e b' b e, |
		d' a a d d a a d |
		c g g c c g g c |
		c4 e f g |
		b, a r g |
		f f2 e4 |
		f r r a' |
		b e, e e |
		e8 a a e e cis cis a |
		f4 r r2 |
		R1 |
		d''8 c16 b a g f e d8 c16 b a g f e |
		d8 d' e, cis' d d, r4 |
		b''8 a16 g f es d c b8 a16 g f es d c |
		b8 b' c, a' b b, r4 |
		g''8 f16 es d c b a g8 f16 es d c b a |
		g8 g' a, fis' g g, r4 |
		R1 |
		c8 d16 es f g a h c8 g es c |
		R1 |
		c'8 b16 as g f es d c8 es g c |
		a4 r r2 |
		b,8 c16 d es f g a b8 d f b |
		f es16 d c b a g f8 c' a f |
		b,4 d' c f |
		f, b b a8. g16 |
		f4 b, r2 |
		R1 |
		r2 r4 r8 b'' |
		a f as d, g es c' c, |
		h' d, b' g a fis d' d, |
		es c fis a, g' b, d g, |
		es' fis, g c, d4 r |
		R1 |
		d'8 a a d d a a d |
		d g, g d' d g, g d' |
		c g g c c g g c |
		c f, f c' c f, f c' |
		h g g h c g g c |
		c a a c c a a c |
		b4 r r2 |
		r4 d b' as8 g |
		as4 g r2 |
		r4 d, c' b8 a |
		b4 a d d |
		g,1~ |
		g4 fis g g |
		fis fis g2~ |
		g4 g fis fis |
		g1 |
		c2 d |
		h g' |
		fis1 |
		d4 cis2 b'4 |
		a2 a,4 g |
		fis1 |
		R1*5 |
		g'8 f16 es d c b a g8 f16 es d c b a |
		g8 g' a, fis' g g, r4 |
		b''8 a16 g f es d c b8 a16 g f es d c |
		b8 b' c, a' b b, r4 |
		d''8 c16 b a g fis e d8 c16 b a g fis e |
		d8 es16 d c b a g d'4 r8 d' |
		b'4 as8. g16 as4 g |
		c b8. a16 b4 a |
		d c8. b16 c4 a |
		b a8. g16 g8 f16 es d c b a |
		g8 f16 es d c b a g4. r16 g'' |
		b,4 a8. g16 g4\fermata \bar "||" r4 |
		b8 a16 g f es d c b4 r |
		c'8 b16 a g f e d c4 r |
		f f' f, r |
		g g g8 c c g |
		c c c c c c c c |
		f f, f f' g g, g g' |
		c, c c c b b b b |
		c c c c c c b b |
		g4 r r2 |
		R1 |
		a8 c c a a c c a |
		b b c c c c c c |
		b b c c c4 r |
		es f d4. r16 d' |
		c8. b16 a8. g16 \times 2/3 { f8 c' b } \times 2/3 { a g f } |
		\times 2/3 { es g f } \times 2/3 { es d c } d4 r |
		g,8 c c g g c c  a|
		f b b f b4 g |
		a r r2 |
		R1*2 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
staffViolinoII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key g \minor
	\clef treble
	\relative c''' {
		g8 f16 es d c b a g8 f16 es d c b a |
		g8 g' a, fis' g g, r4 |
		b''8 a16 g f es d c b8 a16 g f es d c |
		b8 b' c, a' b b, r4 |
		d''8 c16 b a g fis e d8 c16 b a g fis e |
		d8 es16 d c b a g d'4 r8 d' |
		cis a d, c' h g b g' |
		fis a, f' d e g, es' c |
		d fis, g c, d fis' g c, |
		b4 a8. g16 g4 r |
		R1 |
		g'8 f16 es d c b a g8 f16 es d c b a |
		g4 r r2 |
		b8 c16 d es f g a b8 c16 d es f g a |
		b4 r r2 |
		f8 e16 d c b a g f8 c'16 b a g f es |
		d4 r r2 |
		fis4 r g r |
		a r g r |
		fis r d r |
		d r d r |
		d r r2 |
		R1 |
		r2 r4 r8 g' |
		fis a, f' d e g, es' c |
		d fis, g c, d4 r |
		R1 |
		r4 f f f |
		e f g f |
		f8 d e f f e e g |
		f c' c f f c c a |
		d, f f b b g g d' |
		c g g c c g g c |
		c f, f c' c f, f c' |
		b f f b b f f b |
		b e, e b' b e, e b' |
		a d d a a d d a |
		g c c g g c c g |
		a4 b c d |
		e f r b, |
		a4. g8 g4. f8 |
		f4 r r a' |
		b e, e e |
		e8 a, cis a' a e e cis |
		a4 r r2 |
		R1 |
		d'8 c16 b a g f e d8 c16 b a g f e |
		d8 d' e, cis' d d, r4 |
		b''8 a16 g f es d c b8 a16 g f es d c |
		b8 b' c, a' b b, r4 |
		g''8 f16 es d c b a g8 f16 es d c b a |
		g8 g' a, fis' g g, r4 |
		R1 |
		c8 d16 es f g a h c8 g es c |
		R1 |
		c'8 b16 as g f es d c8 es g c |
		a4 r r2 |
		b,8 c16 d es f g a b8 d f b |
		f es16 d c b a g f8 c' a f |
		b,4 f'' f, c' |
		d, d' es c |
		b f, r2 |
		R1 |
		r2 r4 r8 b'' |
		a f as d, g es c' c, |
		h' d, b' g a fis d' d, |
		es c fis a, g' b, d g, |
		es' fis, g c, d4 r |
		R1 |
		a'8 d d a a d d a |
		g d' d g, g d' d g, |
		g c c g g c c g |
		f c' c f, f c' c f, |
		d' h h g g c c g |
		a c c a a c c a |
		g4 r r2 |
		r4 d' b' as8 g |
		as4 g r2 |
		r4 fis, a g8 fis |
		g4 fis g g |
		a1~ |
		a4 a g g |
		d a' b c |
		b d a d |
		b1 |
		as |
		g |
		a |
		b2 e, |
		d1 |
		d |
		R1*5 |
		g'8 f16 es d c b a g8 f16 es d c b a |
		g8 g' a, fis' g g, r4 |
		b''8 a16 g f es d c b8 a16 g f es d c |
		b8 b' c, a' b b, r4 |
		d''8 c16 b a g fis e d8 c16 b a g fis e |
		d8 es16 d c b a g d'4 r8 d' |
		b'4 as8. g16 as4 g |
		c b8. a16 b4 a |
		d c8. b16 c4 a |
		b a8. g16 g8 f16 es d c b a |
		g8 f16 es d c b a g4. r16 g'' |
		b,4 a8. g16 g4\fermata \bar "||" r4 |
		f4 r g,8 a16 b c d es f |
		g4 r a,16 c d e f g a b |
		c4 c b8. d16 f,8. b16 |
		d,4 d e8 g g e |
		f f f f f f f f |
		a a b d b b e, e |
		a a a a g2 |
		r8 c, f b a a d d |
		e,4 r r2 |
		R1 |
		f8 a a f f a a f |
		f f g g a a a a |
		f f g g a4 r |
		b c f, f' |
		g es f c |
		b c b r |
		c8 g g c c a a c |
		d f, f d' d4 es |
		c r r2 |
		R1*2 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key g \minor
	\clef alto
	\relative c' { 	
		b4 r8 c d4 r8 g, |
		d4 r8 d' b4 r |
		b r8 c d4 r8 b |
		f4 r8 f' d4 r |
		g4 r8 b fis4 r |
		g, r8 g fis4 r |
		R1*2 |
		r8 fis' g c, d c' b a16 g |
		g4 fis g r |
		R1 |
		d4 r r2 |
		d4 r c r |
		b r r2 |
		b4 r r g' |
		c, r c r |
		d r r2 |
		d4 r d r |
		d' r b r |
		d, r b r |
		a r b r |
		a r r2 |
		R1*5 |
		r4 c b c |
		c c b c |
		g' g, c b |
		c f f f8 c |
		b' b, b f' g d d d |
		e4 e e e |
		f c c f |
		d d d d |
		g g g g |
		f f f f |
		e e e e |
		c b f' b |
		g f r g |
		a d, g c, |
		a r r d |
		d h' h h |
		e, e e e |
		f r r2 |
		R1 |
		f4 r8 cis a'4 r8 b, |
		a4 r8 e' f d f a |
		f4 r8 a, d4 r8 g, |
		f4 r8 es' d4 r |
		d r es r8 g, |
		d4 r8 c' b4 r |
		g' r r2 |
		g,4 r r2 |
		as'4 f h, r |
		g' r g, r |
		c r r2 |
		b4 r f' r |
		f r c r |
		f b c, a' |
		d, g g f |
		d' d, r2 |
		R1*5 |
		r8 fis g c, d4 r |
		R1 |
		fis4 fis fis fis |
		d d d d |
		e e e e |
		a, a c c |
		d es es es |
		a, d d d |
		d r r2 |
		r4 g d d |
		es d r2 |
		r4 a' d, d |
		d d d g |
		g e e e |
		d d c c |
		a' d, d es |
		d d d d |
		d1 |
		es2 d~ |
		d c |
		c d |
		g1 |
		a |
		a |
		R1*5 |
		b,4 r8 c d4 r8 g, |
		d4 r8 c' b4 r |
		b r8 f' d4 r8 b |
		f4 r8 es' d4 r |
		g r8 a fis4 r |
		g r8 c, fis,4 r |
		d'4. d8 es4 d8 g |
		fis a g8. fis16 g4 fis |
		g g g g |
		g fis g r |
		d r r8 d c8. es16 |
		d8 g fis8. c16	b4\fermata \bar "||" r |
		f'4 b es, r |
		e r a, r |
		a' a8. c,16 d4 r |
		g, g c8 g g c |
		c c c c c c c c |
		d' d d, d d d c c |
		c c c c d2 |
		c8 c c c c c g' g |
		c4 r r2 |
		R1 |
		c,8 f f c c f f c |
		d f es d c c f f |
		f f es d c4 r |
		g' c, b' b |
		g g8. b16 c4 f, |
		b, f' f r |
		es es es es |
		f f g g |
		c, r r2 |
		R1*2 |
	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Faramondo"
	\set Staff.midiInstrument="oboe"
	\key g \minor
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*10 |
			b4 a8. g16 d'4. d8 |
			b8[ a] g4 r2 |
			b4 a8. g16 f4 es' |
			d8[ c] b4 r2 |
			f'4 es8. d16 g4 b, |
			a8[ b] c4 r2 |
			d4 es8 d c[ b] a[ g] |
			\times 2/3 { fis[\melisma a g] } \times 2/3 { a[ g fis] } \times 2/3 { g[ b a ] } \times 2/3 { b[ a g] } |
			\times 2/3 { a[ c b] } \times 2/3 { c[ b a] } \times 2/3 { b[ a g] } d'4 |
			\times 2/3 { a8[ g fis] } d'4 \times 2/3 { b8[ a g] } d'4~ |
			\times 2/3 { d8[ c d] } \times 2/3 { es[ d c] } \times 2/3 { d[ c b] } \times 2/3 { a[ b g] } |
			fis8.[ e16]\melismaEnd d4 r2 |
			r2 r4 r8 d |
			a'4 r r2 |
			R1 |
			r2 r4 r8 a |
			b4 r r f |
			f2. f4 |
			g f r f |
			g4. a8 b4 b |
			b a r c |
			d4. b8 g4. f8 |
			e2 r4 c' |
			c1\melisma |
			d, |
			e' |
			f, |
			g'2~ g4. b,8 |
			a8.[ b16 b8. c16] c8.[ d16 d8. e16] |
			e4\melismaEnd f r b, |
			a4. g8 g4. f8 |
			f4 d' d2~ |
			d4 d d d |
			d cis r e |
			a,2. b4 |
			f2\melisma e4.\melismaEnd d8 |
			d2 r |
			R1*5 |
			d'4 h8. a16 g4 d' |
			es8[ d] c4 r2 |
			d4 h8. a16 g4 f' |
			es8[ d] c4 r2 |
			c4 a8. g16 f4 c' |
			d8[ c] b4 r2 |
			c4 a8. b16 c4 f, |
			\times 2/3 { d'8[\melisma c b] } f'4 \times 2/3 { c8[ a b] } f'4 |
			\times 2/3 { f,8[ g a] } \times 2/3 { b[ c d] } \times 2/3 { es[ d c] } \times 2/3 { g'[ f es] } |
			d8.[ c16]\melismaEnd b4 r2 |
			r r4 r8 b |
			f'4 r r2 |
			R1*3 |
			r2 r4 r8 a, |
			d4 r r d |
			fis2. fis4 |
			g g, r g |
			e'4. e8 e4 e |
			f8[ e] f2 f4 |
			f es es2~ |
			es4 d d2 |
			r4 d, b' as8[ g] |
			as4 g r2 |
			r4 g c b8[ a] |
			b4 a r2 |
			r r4 d |
			es a, a a |
			a8[ g] a4 r c |
			c4.\melisma d8 b4\melismaEnd a4 |
			b2\melisma a4.\melismaEnd g8 |
			g2 r4 g' |
			as,2.\melisma f'4 |
			h,2 c |
			fis2. g8[ fis] |
			g4 cis,2 d4~ |
			d\melismaEnd h c c |
			c1 |
			r2 r4 a |
			b es d c |
			fis g2 es4 |
			d2 g, |
			b\melisma a4.\melismaEnd g8 |
			g2 r |
			R1*10 |
			r2 r4 \bar "||" r8 g |
			b8. b16 b8 b b8.[ a16] g8 g |
			c8. c16 c8 c c8.[ b16] a8 c |
			a8. c16 f,8. a16 d,4 r8 d' |
			b8. d16 g,8. b16 e,2 |
			r c'~ |
			c4 b8 a b4 b |
			a2 g~ |
			g4 f8. e16 f4 f |
			e d' c b |
			a2\melisma g4.\melismaEnd f8 |
			f2 r4 r8 f |
			b8. d16 c8. b16 a8.[ g16] f8 f |
			b8. d16 c8. b16 \times 2/3 { a8[\melisma c b] } \times 2/3 { a[ g f] } |
			\times 2/3 { es'[ g f] } \times 2/3 { es[ d c] } d8.[ c16]\melismaEnd b4 |
			R1*2 |
			r2 c~ |
			c4 b8 a b4 c |
			a f b es |
			d2\melisma c4.\melismaEnd b8 |
			b1 |
		}

	\bar "|."
	}

}
staffBasso = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key g \minor
	\clef bass
	\relative c {
		g4 r8 a b4 r8 c |
		d4 d, g8 es' d c |
		g'4 r8 a b4 r8 es, |
		f4 f, b8 g' f es |
		b'4 r8 c d4 r |
		b, r8 es d4 r |
		R1*2 |
		r8 fis g c, d a' b c |
		d4 d, g, r |
		R1 |
		g'4 r r2 |
		r4 b a f |
		b r r2 |
		d,4 r es e |
		f r a, r |
		b r es c |
		d r b' r |
		fis r g b |
		d fis, g b, |
		d c b c |
		d2 r |
		R1 |
		d4 r r2 |
		R1 |
		r2 r4 r8 d |
		g4 r r2 |
		r4 a b a |
		b a b a |
		b4. a8 g4 c, |
		f f a f |
		b, b b b |
		b b b b |
		a a a a |
		b b b b |
		c c c c |
		d d d d |
		e e e e |
		f g a b |
		c d r e |
		f b, c c, |
		f2 r4 fis |
		g gis gis gis |
		a a cis, cis |
		d d f, g |
		a a a a |
		d r8 e f4 r8 g |
		a4 a, d r |
		d, r8 f g4 r8 e' |
		f4 f, b8 es d c |
		b4 r es r8 c |
		d4 d, g r |
		h r r2 |
		c4 r r2 |
		f4 r g r |
		c, r es r |
		f r a r |
		b r d, r |
		a r a' r |
		b b, a a' |
		b g c, a' |
		b b, r2 |
		r r4 r8 g' |
		f4 r r2 |
		R1*3 |
		r8 fis g c, d4 r |
		d, r r2 |
		c'4 c c c |
		b b b b |
		b b b b |
		a a as as |
		g g g' g |
		fis fis fis fis |
		g g g, b |
		c b g b |
		c b a d |
		g d fis d |
		g d b b |
		c cis cis cis |
		d d es es |
		d d g c, |
		d d d d |
		g g g g |
		g g f f |
		f f es es |
		es es d c |
		b b a g |
		fis fis fis a |
		d,1 |
		r2 r4 d' |
		g, g' f es |
		d es b c |
		d2 es |
		d d, |
		g4 r8 a b4 r8 c |
		d4 d, g8 es' d c |
		g'4 r8 a b4 r8 es, |
		f4 f, b8 g' f es |
		b'4 r8 c d4 r |
		b, r8 es d4 r |
		g b c b |
		a d g, d |
		b' b c cis |
		d d, g r |
		b, r es4. r16 c |
		d4 d, g\fermata \bar "||" r |
		d' d es r |
		e e f r |
		f a b r |
		b, b c b |
		a a a a |
		d d g, e' |
		f f, b b' |
		a a, a b |
		c b a b |
		c c c c |
		f f es es |
		d es f f, |
		d' es f f, |
		g a b d |
		es c a f |
		g a b r |
		es es es es |
		d d g es |
		f b g es |
		f2 f, |
		b1 |
	\bar "|."
	}

}


\score {
	<<
		\staffViolinoI
		\staffViolinoII
		\staffViola
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
		\staffBasso
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

