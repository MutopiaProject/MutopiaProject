% Created on Sat May 12 14:33:28 CEST 2007
\version "2.10.33"

\header {
	title = "Sta piangendo la tortorella"
	composer = "A. Vivaldi (1678-1741)"
	mutopiatitle = "Sta piangendo la tortorella, Aria from L'Olimpiade"
	mutopiacomposer = "VivaldiA"
	mutopiainstrument = "Voice (Soprano), Horns, String Ensemble, Basso Continuo"
	mutopiapoet = "P. Metastasio (1698-1782)"
	mutopiaopus = "RV 725" 
	date = "1734"
	source = "Autograph, 1734"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/12/02-1177"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Stà pian -- gen -- do la tor -- to -- rel -- la fin -- ché ve -- do -- va e smar -- ri -- ta smar -- ri -- ta mà se tro -- va il suo di -- let -- to en -- tro_il ni -- do ò nel bo -- schet -- to dol -- ce can -- ta dol -- ce can -- ta la tor -- to -- rel -- la dol -- ce can -- ta nel bo -- schet -- to e si con -- so -- la. Stà pian -- gen -- do la tor -- to -- rel -- la fin -- ché ve -- do -- va e smar -- ri -- ta mà se tro -- va il suo di -- let -- to en -- tro_il ni -- do_ò nel bo -- schet -- to dol -- ce can -- ta dol -- ce can -- ta la tor -- to -- rel -- la la tor -- to -- rel -- la nel bo -- scet -- to dol -- ce can -- ta e si con -- so -- la dol -- ce can -- ta e si con -- so -- la. Mà per me non v'è spe -- me vi -- ver sem -- pre do -- vro in pe -- ne sven -- tu -- ra -- ta af -- fli -- ta_e so -- la af -- fli -- ta_e so -- la af -- fli -- ta_e so -- la_af -- fli -- ta_e so -- la_e so -- la.
}
 

staffHornInF = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 60 
	\set Staff.instrumentName="Corni da caccia"
	\set Staff.midiInstrument="french horn"
	\key f \major
	\clef treble
	\relative c' {
		f4 f f2~ |
		f1~ |
		f2~ f8 f f f |
		c4 c c2~ |
		c1~ |
		c2~ c8 c c c |
		R1*2 |
		r2 f'16 f f f f f f f |
		f4 r g16 g g g g g g g |
		g4 r f,~ f8. c'16 |
		f,4~ f8. c'16 f,4~ f8. c'16 |
		a2 f |
		c r |
		r16 c' a f c'8 c, f4 r |
		r16 c' a f c'8 c, f4 r |
		f4 f f2~ |
		f1~ |
		f2~ f8 f f f |
		c4 c c2~ |
		c1~ |
		c2~ c8 c c c |
		R1*8 |
		r2 c8 c g' g |
		c, c g' g c, c c c |
		c c c c r2 |
		c4 c c2~ |
		c1~ |
		c2~ c8 c c c |
		R1*4 |
		c'2 a |
		f c |
		R1*6 |
		f8 f c' c f, f c' c |
		f,16 f' f f f f f f f4 r |
		g16 g g g g g g g g4 r |
		a,8 a a a a16 c a f c'8 c, |
		f a a a a16 c a f c'8 c, |
		f4\fermata r r2 |
		R1*8 |

	\bar "|."
	}

}
staffHornInFII = \new Staff  {
	\set Staff.instrumentName="Corni da caccia"
	\set Staff.midiInstrument="french horn"
	\key f \major
	\clef treble
	\relative c' {
		f4 f f2~ |
		f1~ |
		f2~ f8 f f f |
		c4 c c2~ |
		c1~ |
		c2~ c8 c c c |
		R1*2 |
		r2 f'16 f f f f f f f |
		f4 r g16 g g g g g g g |
		g4 r f,~ f8. c'16 |
		f,4~ f8. c'16 f,4~ f8. c'16 |
		f,2 c |
		a r |
		r16 c' a f c'8 c, f4 r |
		r16 c' a f c'8 c, f4 r |
		f4 f f2~ |
		f1~ |
		f2~ f8 f f f |
		c4 c c2~ |
		c1~ |
		c2~ c8 c c c |
		R1*8 |
		r2 c8 c g' g |
		c, c g' g c, c c c |
		c c c c r2 |
		c4 c c2~ |
		c1~ |
		c2~ c8 c c c |
		R1*4 |
		a'2 f |
		c a |
		R1*6 |
		f'8 f c' c f, f c' c |
		f,16 f' f f f f f f f4 r |
		g16 g g g g g g g g4 r |
		f,8 f f f f16 a f c c'8 c, |
		f f f f f16 a f c c'8 c, |
		f4\fermata r r2 |
		R1*8 |

	\bar "|."
	}

}
staffViolin = \new Staff  {
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c' {
		f4 f f8. c'16 f,8. c'16 |
		f,8. d'16 f,8. d'16 f,8. c'16 f,8. c'16 |
		f,8. d'16 f,8. d'16 c8 f, f f |
		c4 c c8. g'16 c,8. g'16 |
		c,8. a'16 c,8. a'16 c,8. g'16 c,8. g'16 |
		c,8. a'16 c,8. a'16 g8 c, c c |
		a'' a a a a32 b c b a16 r a32 b c b a16 r |
		d,32 es f es d16 r d32 es f es d16 r h'32 c d c h16 r h32 c d c h16 r |
		e,32 f g f e16 r e32 f g f e16 r f f c c a a f f |
		b, b d d f f b b g' g d d h h g g |
		c, c e e g g c c a c b8\trill a16 c b8\trill |
		a16 a c c f f a a a, c b8\trill a16 c b8\trill |
		a2 f |
		c a''16 c32 b a16 c32 b a16 c32 b a16 c32 b |
		a16 c a f c8 c, f16 c'32 b a16 c32 b a16 c32 b a16 c32 b |
		a16 c a f c'8 c, f4 r |
		f f f8. c'16 f,8. c'16 |
		f,8. d'16 f,8. d'16 f,8. c'16 f,8. c'16 |
		f,8. d'16 f,8. d'16 c8 f, f f |
		c4 c c8. g'16 c,8. g'16 |
		c,8. a'16 c,8. a'16 c,8. g'16 c,8. g'16 |
		c,8. a'16 c,8. a'16 g8 c, c c |
		b' b b b a a a a |
		b b b b a a a a |
		f4 e d c |
		f8 g a h c4 c, |
		a''8 a a a a32 b c b a16 r a32 b c b a16 r |
		d,32 es f es d16 r d32 es f es d16 r h'32 c d c h16 r h32 c d c h16 r |
		e,32 f g f e16 r e32 f g f e16 r e g f8\trill e16 g f8\trill |
		e16 g32 f e16 g32 f e16 g32 f e16 g32 f e16 g, f8\trill e16 g f8\trill |
		e16 g32 f e16 g32 f e16 g32 f e16 g32 f e16 e' d c h a g f |
		e8 c' d4\trill c16 g'32 f e16 g32 f e16 g32 f e16 g32 f |
		e f g f e16 r e32 f g f e16 r c'16 g e c f,8 g |
		c,4 c c8. g'16 c,8. g'16 |
		c,8. a'16 c,8. a'16 c,8. g'16 c,8. g'16 |
		c,8. a'16 c,8. a'16 g8 c, c c |
		d' d d d d d d d |
		c c c c c c c c |
		f16 f c c a a f f b, b d d f f b b |
		g' g d d h h g g c, c e e g g c c |
		c2 a |
		f c |
		a''8 a a a a32 b c b a16 r a32 b c b a16 r |
		d,32 es f es d16 r d32 es f es d16 r h'32 c d c h16 r h32 c d c h16 r |
		e,32 f g f e16 r e32 f g f e16 r a c b8\trill a16 c b8\trill |
		a16 c32 b a16 c32 b a16 c32 b a16 c32 b a16 c, b8\trill a16 c b8\trill |
		a16 c32 b a16 c32 b a16 c32 b a16 c32 b a16 f f f c'' b b a |
		a b b c c b b a a b b c c b b a |
		a c, b a g f e d c8 f g4\trill |
		f'16 f c c a a f f b, b d d f f b b |
		g' g d d h h g g c, c e e g g c c |
		a'16 c32 b a16 c32 b a16 c32 b a16 c32 b a16 c a f c8 c, |
		f16 c'32 b a16 c32 b a16 c32 b a16 c32 b a16 c a f c'8 c, |
		f4\fermata r8 a a a a a |
		a'16 a f f d d a a b8 b a a |
		a'16 a f f d d a a h8 h h h |
		a'16 a e e c c a a h8 a h a16 gis |
		c32 d e d c16 r a'32 h c h a16 r h32 c d c h16 r gis32 a h a gis16 r |
		a,8 h c h e, d' c h |
		c c c c a a a d |
		h h h e c c c f |
		e c h h c2\fermata |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c' {
		f4 f f8. a16 f8. a16 |
		f8. b16 f8. b16 f8. a16 f8. a16 |
		f8. b16 f8. b16 a8 f f f |
		c4 c c8. e16 c8. e16 |
		c8. f16 c8. f16 c8. e16 c8. e16 |
		c8. f16 c8. f16 e8 c c c |
		f' f f f f32 g a g f16 r f32 g a g f16 r |
		b,32 c d c b16 r b32 c d c b16 r g'32 a h a g16 r g32 a h a g16 r |
		c,32 d e d c16 r c32 d e d c16 r c c a a f f c c |
		b b d d f f b b d d h h g g d d |
		c c e e g g c c f, a g8\trill f16 a g8\trill |
		f16 f a a c c f f f, a g8\trill f16 a g8\trill |
		f2 c |
		a f''16 a32 g f16 a32 g f16 a32 g f16 a32 g |
		f16 a f c c8 c, f16 a32 g f16 a32 g f16 a32 g f16 a32 g |
		f16 a f c c'8 c, f4 r |
		f f f8. a16 f8. a16 |
		f8. b16 f8. b16 f8. a16 f8. a16 |
		f8. b16 f8. b16 a8 f f f |
		c4 c c8. e16 c8. e16 |
		c8. f16 c8. f16 c8. e16 c8. e16 |
		c8. f16 c8. f16 e8 c c c |
		g' g g g c c c c |
		g g g g c c c c |
		f,4 e d c |
		f8 g a h c4 c, |
		f'8 f f f f32 g a g f16 r f32 g a g f16 r |
		b,32 c d c b16 r b32 c d c b16 r g'32 a h a g16 r g32 a h a g16 r |
		c,32 d e d c16 r c32 d e d c16 r c16 e d8\trill c16 e d8\trill |
		c16 e32 d c16 e32 d c16 e32 d c16 e32 d c16 e, d8\trill c16 e d8\trill |
		c16 e32 d c16 e32 d c16 e32 d c16 e32 d c16 c' h a g f e d |
		c8 c' h4\trill c16 e32 d c16 e32 d c16 e32 d c16 e32 d |
		c d e d c16 r c32 d e d c16 r g'16 e c g f8 g |
		c,4 c c8. e16 c8. e16 |
		c8. f16 c8. f16 c8. e16 c8. e16 |
		c8. f16 c8. f16 e8 c c c |
		a' a a a b b b b |
		g g g g a a a a |
		c16 c a a f f c c b b d d f f b b |
		d d h h g g d d c c e e g g c c |
		a2 f |
		c a |
		f''8 f f f f32 g a g f16 r f32 g a g f16 r |
		b,32 c d c b16 r b32 c d c b16 r g'32 a h a g16 r g32 a h a g16 r |
		c,32 d e d c16 r c32 d e d c16 r f16 a g8\trill f16 a g8\trill |
		f16 a32 g f16 a32 g f16 a32 g f16 a32 g f16 a, g8\trill f16 a g8\trill |
		f16 a32 g f16 a32 g f16 a32 g f16 a32 g f16 c c c a'' g g f |
		f g g a a g g f f g g a a g g f |
		f a, g f e d c b a8 f' g4\trill |
		c16 c a a f f c c b b d d f f b b |
		d d h h g g d d c c e e g g c c |
		f16 a32 g f16 a32 g f16 a32 g f16 a32 g f16 a f c c8 c, |
		f16 a32 g f16 a32 g f16 a32 g f16 a32 g f16 a f c c'8 c, |
		f4\fermata r8 f f f e e |
		f'16 f d d a a f f d'8 d e e |
		f16 f d d a a f f gis8 gis gis gis |
		e'16 e c c a a e e gis8 c d c16 h |
		a32 h c h a16 r c32 d e d c16 r gis'32 a h a gis16 r e32 fis gis fis e16 r |
		c8 gis a d, c a' a gis |
		a e e e fis fis fis h |
		gis gis gis c a a a d |
		c a a gis a2\fermata |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key f \major
	\clef alto
	\relative c' {
		f4 f f f |
		f f f f |
		f f f8 f f f |
		c4 c c c |
		c c c c |
		c c c8 c c c |
		a'8 a a a a a a a |
		b b b b h h h h |
		c c c c a16 a f f c c a a |
		b b d d f f b b h h g g d d h h |
		c c e e g g c c f,8 c f c |
		c c c c f c f c |
		c2 a |
		f c'8 c c c |
		c16 f c a c8 c c c c c |
		c16 f c a c8 c a4 r |
		f'4 f f f |
		f f f f |
		f f f8 f f f |
		c4 c c c |
		c c c c |
		c c c c |
		e8 e e e f f f f |
		e e e e f f f f |
		f4 e d c f8 g a h c4 c, |
		a'8 a a a a a a a |
		b b b b h h h h |
		c c c c g, g g g |
		g g g g g g g g |
		g g g g g g g g |
		g g g g g g' g g |
		g g g g e'16 c g e f8 g |
		c,4 c c c |
		c c c c |
		c c c c |
		fis8 fis fis fis g g g g |
		e e e e f f f f |
		a16 a f f c c a a b b d d f f b b |
		h h g g d d h h c c e e g g c c |
		f,2 c |
		a f |
		a'8 a a a a a a a |
		b b b b h h h h |
		c c c c c, c c c |
		c c c c c c c c |
		c c c c c16 a a a f'8 f |
		f f f f f f f f |
		f c c c c c c c |
		a'16 a f f c c a a b b d d f f b b |
		h h g g d d h h c c e e g g c c |
		c,8 c c c c16 f c a c'8 c, |
		c c c c c16 f c a c'8 c, |
		f4\fermata r8 d d d cis cis |
		d d d d g g g g |
		f f f f e e d d |
		c c c c d a d e |
		a,2 e' |
		a8 e c gis a f' e e, |
		a2 d |
		e f4. gis,8 |
		a4 e' a,2\fermata |
	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Aristea"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*16 |
			f4 f f2~ |
			f8[ d' c16 b a g] f2~ |
			f8 d' c16[ b] a[ g] a[ g] f8 r4 |
			r2 c4 c' |
			c16 b a4. c,4 c' |
			c16[b] a4 g16[ f] e[ d] c8 r4 |
			b'16[\melisma c] d4\melismaEnd b8 a16[ g] f4 f8 |
			b16[\melisma c] d4\melismaEnd c16[ b] a[ g] f4. |
			f4 e d c |
			f8[ g] a h c4 c, |
			a' a a16[\melisma b a b] a8\trill r |
			b16[ c b c] b8\trill r h16[ c h c] h8\trill r |
			c16[ d c d]\melismaEnd c8\trill r r4 g8 g |
			c c16 c c8 c c g g g |
			c c c c c[ h16 a] g[ f] e[ d] |
			e8 c' d4\trill c r |
			R1 |
			c4 c c2~ |
			c8 h16 a g[ f] e[ d] c2~\melisma |
			c8[ d16 e f g a h] c4\melismaEnd c, |
			c'4. b16[ a] b a g8 r4 |
			b4. a16[ g] a[ g] f8 r4 |
			a4. a8 b16[ a] b8 r d |
			h4. h8 c16[ h] c8 r4 |
			c4. b8 a4. g8 |
			f4. f8 c'4 c, |
			a' a a16[\melisma b a b] a8\trill r |
			b16[ c b c] b8\trill r h16[ c h c] h8\trill r |
			c16[ d c d]\melismaEnd c8\trill r r4 c8 c |
			c a16 b c8 c c b16 c a8 b |
			c8 c c c c c, c'16[ b] b[ a] |
			a[ b] b c c[ b] b[ a] a[ b] b[ c] c[ b] b[ a] |
			a[ c b a] g[ f] e[ d] c8 f g4\trill |
			f r r2 |
			R1*3 |
			r4 a8 a d c16[ b] a[ g] f[ e] |
			f16[ e] d8 a' a b a16[ g] cis8 h16[ a] |
			d8 d, r4 gis4. gis8 |
			a8 e r c' h[ a h] a16[ gis] |
			a16[\melisma h a h] a8\trill r h16[ c h c] h8\trill r |
			c16[ h a gis]\melismaEnd a8 f e d' c[ h] |
			a4 r8 e fis4. h8 |
			gis4. c8 a4. d8 |
			c h16[ a] h4\trill a2\fermata |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c {
		f4 f f f |
		f f f f |
		f f f8 f f f |
		c4 c c c |
		c c c c |
		c c c8 c c c |
		R1*2 |
		r2 f8 f f f |
		b,16 b d d f f b b g8 g g g |
		c,16 c e e g g c c f,4 r |
		f8 f f f f2 |
		f,8 f f f f f f f |
		f f f f f' f f f |
		f,16 f f' f, c''8 c, f f f f |
		f16 f, f' f, c''8 c, f4 r |
		f4 f f f |
		f f f f |
		f f f8 f f f |
		c4 c c c |
		c c c c |
		c c c c |
		R1*2 |
		f4 e d c |
		f8 g a h c4 c, |
		R1*2 |
		r2 c8 g c g |
		r2 c8 g c g |
		r2 c8 f h, g |
		c8 c, g'' g, c c c c |
		c c c c c16 c, c' c, f'8 g |
		c,4 c c c |
		c c c c |
		c c c c |
		R1*2 |
		f8 f f f b,16 b d d f f b b |
		g8 g g g c,16 c e e g g c c |
		f,,8 f f f f f f f |
		f f f f f f f f |
		R1*2 |
		r2 f'8 c f c |
		r2 f8 c f c |
		r2 f8 f, r4 |
		R1 |
		f8 f c' c f f c c, |
		f f' f f b,16 b d d f f b b |
		g8 g g g c,16 c e e g g c c |
		f,8 f f f f16 f, f' f, c''8 c, |
		f f f f f16 f, f' f, c''8 c, |
		f,4\fermata r d'8 d cis cis |
		d4 r g8 g g g |
		f4 r e8 e d d |
		c4 r8 a e' a, d e |
		a,4 r e' r |
		a, r8 gis a f' e e, |
		a a a a r d d4 |
		r8 e e4 r8 f f gis, |
		a4 e' a,2\fermata |

	\bar "|."
	}

}


\score {
	<<
		\staffHornInF
		\staffHornInFII
		\staffViolin
		\staffViolinII
		\staffViola
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
		indent=20
	}
}

\paper {
}

