% Created on Mon Jan 21 21:36:56 CET 2008
\version "2.10.33"

\header {
	title = "Io già t'amai"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Io già t'amai , Aria from Rodelinda"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 19"
	mutopiainstrument = "Voice (Tenor), String Ensemble, Basso Continuo"
	date = "1724-25"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 70, 1876"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1312"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Io già t'a -- ma -- i, t'a -- mai ri -- tro -- sa, sde -- gna -- sti_es -- ser mia spo -- sa, sem -- pre di -- ce -- sti nò, sem -- pre di -- ce -- sti nò, sem -- pre di -- ce -- sti nò, sde -- gna -- sti_es -- ser mia spo -- sa, sde -- gna -- sti_es -- ser mia spo -- sa, sem -- pre di -- ce -- sti nò; io già t'a -- ma -- i, t'a -- ma -- i ri -- tro -- sa, sde -- gna -- sti d'es -- ser mia spo -- sa, sde -- gna -- sti d'es -- ser mia spo -- sa, sem -- pre di -- ce -- sti nò, sem -- pre di -- ce -- sti nò, sde -- gna -- sti_es -- ser mia spo -- sa, sem -- pre di -- ce -- sti nò, nò, nò, sde -- gna -- sti_es -- ser mia spo -- sa, sem -- pre di -- ce -- sti nò.
Or ch'io son Rè, non vo -- glio com -- pa -- gno nel mio so -- glio a -- ver chi mi sprez -- zò, nò, nò, non vo -- glio com -- pa -- gno nel mio so -- glio a -- ver chi mi sprez -- zò.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120
	\set Staff.instrumentName="Tutti unisono"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		b2 c |
		d es, |
		d8 f b4~ b8 c16 b a8 f'~ |
		f es16 d es8 b' a es d a |
		g d' c g' f c b c16 d |
		es8 c a es d f b d |
		es c a es d f b d |
		es c a' f b b, es4 |
		d8 c16 b f8 a b b, d f \mark \markup { \musicglyph #"scripts.segno" } |
		b,4 r r2 |
		b'2 c |
		d4 r r2 |
		f2 g\trill |
		a8 c, f2 es4 |
		d8 c b a g4 a8 b |
		a8 c f a b g e b |
		a c f a b g e b |
		a c f c f,4 r8 d' |
		c4 r8 c, b4 r8 b' |
		a4 r8 b, c4 r |
		R1 |
		c'2 d |
		e8 c f4 r2 |
		R1*2 |
		f2 g |
		a b, |
		a8 c f4~ f8 es es d16 c |
		d4 r r2 |
		r4 r8 d c2\trill |
		r4 r8 b a2\trill |
		r4 r8 g' f2\trill |
		r4 r8 es d2\trill |
		r4 r8 es d2\trill |
		r4 r8 es c2\trill |
		r4 r8 d c2\trill |
		R1 |
		r8 c f2 es4 |
		d8 f b4 r2 |
		R1 |
		b,4 r r2 |
		r8 f' b b b a16 g a8 f |
		r f, b4 r2 |
		R1 |
		R1\fermata |
		R1 |
		b'2 c |
		d es, |
		d8 f b4~ b8 a16 g a8 f |
		f es16 d es8 es, d f b d |
		es c a es d f b d |
		es c a' f b b, es4 |
		d8 c16 b f8 a b\fermata b, \bar "||" r4 |
		R1*11 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.S." } |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key b \major
	\clef alto
	\relative c' {
		d2 f |
		b c, |
		b8 d d es16 f g8 es c a' |
		b4 r8 b, c4 r8 d |
		es4 r8 d es4 r8 f |
		es4 r8 c b4 r8 f' |
		es4 r8 c b4 r8 f' |
		es g c, a' f d a' c |
		f, g d c d b d f |
		b,4 r r2 |
		d2 f |
		f4 r r2 |
		a2 c |
		c4 r8 f,,^\markup {col Bassons} g a b c |
		d es f f, g b es d |
		c4 r8 f, g b c e |
		f4 r8 f, g b c e |
		f4 r r2 |
		R1*3 |
		r2 f4. b8 |
		b4 a8 c,,^\markup {col Bassons} d e f g |
		a b c d e4 f |
		R1 |
		a2 b |
		a g |
		f4 r8 a b4 c |
		f, r r2 |
		r4 r8 b f2 |
		r4 r8 g d2 |
		r4 r8 g as4 h, |
		r r8 g' f4 d |
		r4 r8 g g2 |
		r4 r8 c, f2 |
		r4 r8 b f2 |
		R1 |
		r4 r8 f,^\markup {col Bassons} g a b c |
		d4 r8 d, es f g a |
		b c d es f4 b, |
		R1 |
		b4 r c r |
		d r8 d, es f g a |
		b c d es f4 b, |
		R1\fermata |
		R1 |
		d2 f |
		b8 f d b c4 f |
		r8 a g f c'4 r8 d |
		b4 r8 c, b4 r8 f' |
		es4 r8 c b4 r8 f' |
		es4 r8 a f4 b8 c |
		f, g d c d4\fermata \bar "||" r4 |
		R1*11 |
	\bar "|."
	}

}
staffTenor = \new Staff  {
	\set Staff.instrumentName="Grimoaldo"
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef "G_8"
	\relative c' {
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			R1*9 |
			b2 c4. f8 |
			d[ c] b4 r r8 f' |
			d4 c8[ d] b2 |
			a r |
			r4 r8 f g a b c |
			d[ es] f f, g b es d |
			c4 r8 f, g b c e |
			f4 r8 f, g b c e |
			f4 r8 c d16[\melisma c b8] f'4 |
			c16[ b a8] f'4 b,16[ a g8] f'4 |
			a,16[ g f8] f'4~ f16[ e d8] c16[ b a8] |
			d16[ c b8]\melismaEnd c16[ b a8] b16[ a g8] a16[ b c8] |
			a4 g r2 |
			r4 r8 c, d[ e] f[ g] |
			a[ b] c[ d] e4 f |
			r8 b, c d a4\melisma g8.\melismaEnd f16 |
			f4 r r2 |
			R1*2 |
			b2 c4. f8 |
			d[ c] b4 r r8 f' |
			b,[ a] b4 r r8 d |
			g,[ f] g4 r r8 d' |
			es[ d] c4 r8 d g f |
			es[d] c4 r r8 d |
			es[ d] c4 r8 c f es |
			d[ c] b4 r f'~ |
			f es8 d c16[ d es8] d16[ c b8] |
			a4 r8 f g a b c |
			d4 r8 d, es[ f] g[ a] |
			b[ c] d[ es] f4 b, |
			r8 es d c f,4 a |
			b r c r |
			d r8 d, es[ f] g[ a] |
			b[ c] d[ es] f4 b, |
			R1\fermata |
			g'8 f16[ es d8] c16[ b] a4. b8 |
			b4 r r2 |
			R1*5 |
			r2 r4 \bar "||" r8 d |
			b4 g es' r8 c |
			d4 g, r r8 a |
			b4. d8 h4. h8 |
			c[ h] c4 r r8 d |
			es[d] d[ cis] cis[ d] d[ e] |
			a,4 r b r |
			a r r r8 e' |
			f[ e] d cis d c b a |
			d4 g, r b |
			a d f,\melisma e8.\melismaEnd d16 |
			d1 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key b \major
	\clef bass
	\relative c {
		r8 b b' b b a16 g a8 f |
		r b, b' b b a16 g a8 f |
		b f g d es c f f, |
		g4 r8 g' f4 r8 f, |
		es4 r8 es' d4 r8 b |
		c es f a b4 r8 b, |
		c es f a b4 r8 b, |
		c es f es d g c, a' |
		b es, f f, b4 r |
		r8 b b' b b a16 g a8 f |
		r b, b' b b a16 g a8 f |
		b4 a g c, |
		r8 f, f' f f e16 d e8 c |
		f4 r8 d es f g a |
		b c d d, es d c b |
		f'4 r8 f g b c e |
		f4 r8 f, g b c e |
		f4 r8 a, b4 r8 b, |
		a4 r8 a' g4 r8 g, |
		f4 r8 g a4 r8 f' |
		b8 g a f g e f f, |
		r c' c' c c b16 a b8 g |
		c,4 r8 a b c d e |
		f g a b c4 d |
		g, a8 b c4 c, |
		\clef tenor r8 f f' f f e16 d e8 c |
		r8 f, f' f f e16 d e8 c |
		f \clef bass f, a f g4 a |
		r8 b, b' b b a16 g a8 f |
		r b, b' b b a16 g a8 f |
		r g, g' g g f16 es f8 d |
		r es, es' es es d16 c d8 h |
		r c c' c c h16 a h8 g |
		r c, c' c c h16 a h8 g |
		r c, c' b b a16 g a8 f |
		r b, b' b b a16 g a8 f |
		g g, g' f es4 g |
		f r8 d es f g a |
		b4 r8 b, c d es f |
		g a b c d4 d, |
		g f8 es f4 f, |
		b r f' r |
		b r8 b, c d es f |
		g a b c d4 d, |
		R1\fermata |
		es2 f4 f, |
		b8 f' b b b a16 g a8 f |
		r b, b' b b a16 g a8 f |
		b f g d es c f d |
		g4 r8 a b4 r8 b, |
		c es f a b4 r8 b, |
		c es f es d4 g8 a |
		b es, f f, b4\fermata \bar "||" r |
		R1 |
		r8 g g' g g fis16 e fis8 d |
		r g, g' g g f16 es f8 d |
		es g c c c h16 a h8 g |
		c4 b a d, |
		cis8 a a' a a g16 f g8 e |
		r f, f' f f e16 d e8 cis |
		d4 r8 e f4 d |
		b r r g' |
		f d a' a, |
		d1 |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViola
		\staffTenor
		\context Lyrics = "lmelodyTen" \lyricmode  { \lyricsto "melodyTen" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
		indent=25
	}
}

\paper {
}

