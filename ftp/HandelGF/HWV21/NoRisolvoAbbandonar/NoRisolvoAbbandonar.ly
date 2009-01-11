% Created on Sat Jan 05 14:56:00 CET 2008
\version "2.10.33"

\header {
	title = "No! Risolvo abbandonar"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "No! Risolvo abbandonar , Aria from Alessandro"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 21"
	mutopiainstrument = "Voice (Alto), String Ensemble, Basso Continuo"
	date = "1726"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 72, 1877"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1317"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
No! Ri -- sol -- vo_ab -- ban -- do -- nar la bel -- la che mi sprez -- za; son pe -- ne_a -- mor, bel -- lez -- za, son pe -- ne_a -- mor, bel -- lez -- za, la gio -- ia_è_u -- na ca -- te -- na, è_u -- na ca -- te -- na; ri -- sol -- vo_ab -- ban -- do -- nar la bel -- la che mi sprez -- za; son pe -- ne_a -- mor, bel -- lez --za, son pe -- ne_a -- mor, bel -- lez -- za, la gio -- ia_è_u -- na ca -- te -- na, son pe -- ne a -- mor, bel -- lez -- za, la gio -- ia_è_u -- na ca -- te -- na, è_u -- na ca -- te -- na, son pe -- ne a -- mor, bel -- lez -- za, la gio -- ia_è_u -- na ca -- te -- na, è_u -- na ca -- te -- na.
No, più non vo -- glio_a -- mar, no, no, a -- mor è stra -- no_af -- fet -- to, è po -- co_il suo di -- let -- to, è trop -- po la sua pe -- na, è po -- co_il suo di -- let -- to, è po -- co, è trop -- po la sua pe -- na, è trop -- pa la sua pe -- na, è po -- co_il suo di -- let -- to, è trop -- pa la sua pe -- na.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violini unisoni"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c' {
		r4 r8 f d e16 f g8 g |
		c,4 f b8 b b a16 g |
		a g f8 r4 r2 |
		R1 |
		r16 c' d e f a, g f e4 r |
		r16 a b c d f, e d c4 r |
		r16 f' g a b a, g f e4 r |
		r g'2 f4~ 
		f e2 d4~ |
		d c2 h4 |
		c r r2 |
		r r16 g a b c8 f |
		d e16 f g8 g c,4 f |
		b8 a16 g a8 g16 f e d c8 r4 |
		R1 |
		r2 r16 cis d e f c h a |
		gis4 r r16 e' f g a b, a g |
		fis4 r r16 d' e f g a, g f |
		e4 r r r8 c' |
		d e16 f g8 g c, d16 e f8 g16 a |
		b8 b~ b16 a b g a8 a, a'4~ |
		a g2 f4 |
		f,4 r r16 c' d e f g, f e |
		d d' e f g a, g f e e' f g a b, a g |
		f f' g a b f e d c4 r |
		r8 f~ f e~e d~ d c~|
		c b~ b a g16 g' a b c f, e d |
		c8 b16 a g8. f16 f c' d e f g, f e |
		d d' e f g a, g f e e' f g a b, a g |
		f f' g a b f e d c4 r |
		R1*3 |
		r4 r8 f d e16 f g8 g |
		c,4 f b8 b b a16 g |
		a c, d e f g, f e d d' e f g a, g f |
		e e' f g a b, a g f f' g a b f e d |
		c f, e d c8 b'' a16 f g b, a f g e' |
		f8\fermata f, \bar "||" r4 r2 |
		R1 |
		r4 r8 d' b c16 d es8 es |
		a, b16 c d8 d g, a16 b c8 c |
		f, g16 a b2 a4 |
		g8 a16 h c4~ c b16 a b c |
		a4 d~ d16 cis d e cis8 d16 e |
		f8 f, f'4 e es |
		d2 c |
		b a4~ a16 c h a |
		gis8 e a4 h r8 e |
		c d16 e f8 f h, c16 d e8 e |
		a, h16 c d8 d~ d c16 h c8 a |
		f4 e2 dis4 |
		e r r2 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
staffAlto = \new Staff  {
	\set Staff.instrumentName="Alessandro"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			f4 r r2 |
			R1 |
			r4 r8 f d e16[ f] g8 g |
			c,4 f b8 b b a16[ g] |
			a[ g] f8 r a g c c16[b] a[ g] |
			f8 f r f e a a16[ g] f[ e] |
			d8 d r g c, d16[ e] f8 g16[ a] |
			b16[\melisma a b8~] b16[ g f g] a[ g a8~] a16[ f g a] |
			b16[ c b a] b[ g f g] a[ b a g] a[ f e f] |
			g[ a g f] g[ e d e] f[ g f e] f[ d c d] |
			e[ d e c] f[ e f d] g8\melismaEnd c4 h16[ a] |
			g8 f16[ e] d4 c r |
			R1 |
			r2 r4 r8 c |
			d e16[ f] g8 g g4. a8 |
			f e16[ d] e8 a f16[ e] d8 r d' |
			e, c' c h c16[ h] a8 r c |
			d, b' b a b16[ a] g8 r b |
			b a a g16[ f] e[\melisma d c8] c'4~ |
			c8[ b16 a] b8[ b~] b16[ a b g] a8[ a~] |
			a16[ g a f] g8[ g~] g16[ f g e] f[ g a f] |
			b[ c b a] b[ g f g] a[ f b g] a[ c b c] |
			d[ c b a] b[ a g f] e8\melismaEnd c r c |
			d d r d e4 r8 e |
			f f r f g g g\trill f16[ g] |
			a[\melisma b a b] g[ c b c] f,[ g f g] e[ a g a] |
			d,[ b' a b] g[ a f g] e[ d]\melismaEnd c8 r b' |
			a g16[ f] e4 f r8 c |
			d d r d e4 r8 e |
			f f r f g g g\trill f16[ g] |
			a[\melisma b a b] g[ c b c] f,[ g f g] a[ b c a] |
			d[ b c a] b[ a g f] e8\melismaEnd c r b' |
			a8.[\trill g32 a b8] g e2 |
			f r |
			R1*4 |
			r4 \bar "||" r8 f e f16[ g] a8 cis, |
			d4 g fis r8 a |
			d, g fis a b16[ a] g8 r4 |
			r r8 b es, es es es |
			es d r d c d16[ e] f8 f |
			f4\melisma es16[ d es f] d8[ e16 fis] g4~ |
			g8[ a16 g] f[ e f g] e8\melismaEnd e r a |
			a b b a gis a4 g8 |
			fis g r f e f f es |
			d es4 d8 cis16[\melisma e d cis] d4~ |
			d8\melismaEnd d' c h16[ a] a4\melisma gis\melismaEnd |
			a2 r4 r8 c |
			f, f f f f e r c' |
			c b a gis a2~\melisma |
			a8[ h16 c] gis4\melismaEnd a2 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c, {
		f4 r8 a' b a b g |
		a g a f g b, c c, |
		f4 r8 a' b a b g |
		a g a f g b, c e |
		f f, a b c d e c |
		d d f g a a, c a |
		b b' g b c, c' a d |
		g, f e c f e f d |
		g g, c e f e f d |
		e d e a d, f g g, |
		c c' d d, e c16 d e8 f |
		g c g g, c c' a f |
		b a b g a g a f |
		g e f b, c g' c c |
		r f, b g cis, e a, cis |
		d f g a d, a' d f, |
		e a e' e, a a, c a |
		d g d' d, g g, b g |
		c f b, d c c' a f |
		b b, b' g e c a' f |
		d d' e c f c a f |
		d g e c f g a a, |
		b c d b c b a f |
		b a b g c b c a |
		d d, r d' e d e c |
		f, f' c c' d d, a' a, |
		b d g b c c, e c |
		f b c c, f f, a f |
		b a b g c b c a |
		d d, r d' e d e c |
		f, f' e c d d' c a |
		b f d b c4 r8 e |
		f4 b, c2 |
		f,8 f' a f b b b a16 g |
		a8 a, a' g16 f g8 a16 b c8 c, |
		f f, a f b a b g |
		c b c a d c d g |
		e g e c f b, c c, |
		f4\fermata \bar "||" r r r8 a' |
		f g16 a b8 b a b16 c d8 d |
		b g d' d, g a16 b c8 c |
		f, g16 a b8 b, a b a a' |
		b b, d b f' f, a f |
		c' c es c g' g, b g |
		d' d f d a' a, r cis' |
		d d, d'2 c4~ |
		c b2 a4~ |
		a g2 f4 |
		e f8 c d h e e, |
		a' h16 c d8 d g, a16 h c8 c, |
		d c h a gis4 a |
		d e f fis |
		e2 a, |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffAlto
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \verse }
		
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

