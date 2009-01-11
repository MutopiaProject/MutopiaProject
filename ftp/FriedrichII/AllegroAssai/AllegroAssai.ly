% Created on Fri Oct 19 19:33:56 CEST 2007
\version "2.10.33"

\header {
	title = "Sinfonia - 1. Allegro assai"
	composer = "Friedrich II. (1712-1786)"
	mutopiatitle = "Sinfonia"
	mutopiacomposer = "FriedrichII"
	mutopiainstrument = "Ensemble: Flutes, Oboes, Horns, Strings, Basso Continuo"
	source = "Gieddes Samling X,1 U150 mu 6208.0485"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/11/04-1086"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

staffOboe = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 130 
	\set Staff.instrumentName="Oboe I e Flauto traverso I"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c'' {
		d4 d, r8 d'16 e fis8.\trill e32 d |
		a'4 a, r8 a'16 h cis8.\trill h32 a |
		d8 d, d d d2\trill |
		e4.\trill h'8 a8. g16 fis8.\trill e16 |
		fis16 g a8 d, d d2\trill |
		e4.\trill h'8 a8. g16 fis8.\trill e16 |
		fis16 e d8 d d d2\trill |
		fis16 e fis g a fis e d a2\trill |
		fis'16 e fis g a fis e d a2\trill |
		\appoggiatura g'8 fis16 e fis g fis8 r \appoggiatura g8 fis16 e fis g fis8 r |
		\appoggiatura a8 g16 fis g a g8 r \appoggiatura a8 g16 fis g a g8 r |
		\appoggiatura a8 gis16 fis gis a gis8 r gis16 fis gis a gis8 r |
		a16 gis fis e d cis h a a' gis fis e d cis h a |
		fis'8. a16 e8. a16 d,4\trill cis8 r |
		h16 a h cis d8 r r d cis h |
		cis16 h cis d e8 r r cis h a |
		h16 a h cis d8 r r d cis h |
		cis16 h cis d e8 r r cis h a |
		fis'4 d'2 fis,4 |
		e cis'2 e,4 |
		d h'2 d,4 |
		cis8 cis4 cis8 cis cis4 cis8 |
		d16 e fis g a8 r r2 |
		dis,8 dis4 dis8 dis dis4 dis8 |
		e16 fis gis a h8 r r2 |
		gis8 gis4 gis8 gis gis4 gis8 |
		a4 a r8 a a a |
		gis gis4 gis8 gis gis4 gis8 |
		a16 gis fis e d cis h a fis' e d cis h a gis fis |
		e2 h'\trill |
		a4 r r8 a16 h cis8.\trill h32 a |
		e'4 e, r8 e'16 fis gis8.\trill fis32 e |
		a8 a, a a a2\trill |
		h4.\trill fis'8 e8. d16 cis8.\trill h16 |
		cis h a8 a a a2\trill |
		h4.\trill fis'8 e8. d16 cis8.\trill h16 |
		cis h a8 a4 r2 |
		cis16 h cis d e8 r e16 d e fis g8 g |
		g4( fis8) e d( ais') ais( h) |
		g4( fis8) e d cis h4 |
		g'16 fis g a g8 r fis16 e fis g fis8 r |
		e4 e2 e4 |
		e cis'2 e,4 |
		d16 cis d e fis d cis h fis2\trill |
		d'16 cis d e fis d cis h fis2\trill |
		d'8 d d d dis2\trill |
		e8 e e e eis2\trill |
		fis4 fis2 d4 |
		cis cis2 e,4 |
		d16 cis d e d8 r fis16 e fis g fis8 r |
		h16 ais h cis h8 r fis'16 e fis g fis8 r |
		h16 a g fis e d cis h g' fis e d cis h ais gis |
		fis2 cis'\trill |
		h'16 a g fis e d cis h g' fis e d cis h ais gis |
		fis2 cis'\trill |
		h r4 r8 e |
		e4( dis8) c' c4( h8) a |
		a4( gis) r r8 d |
		d4( cis8) h' h4( a8) g |
		fis16 e fis g a fis g a h a h cis d8 r |
		g,16 fis g a h8 r e,16 d e fis g fis e d |
		cis h a8 a4 r2 |
		d4 d, r8 d'16 e fis8.\trill e32 d |
		a'4 a, r8 a'16 h cis8.\trill h32 a |
		d8 d, d d d2\trill |
		e4. h'8 a8. g16 fis8.\trill e16 |
		fis g a8 d, d d2\trill |
		e4.\trill h'8 a8. g16 fis8. e16 |
		fis e d8 d4 r2 |
		c16 h c d c8 r fis16 e fis g fis8 r |
		a4 a2 c,4 |
		h8. g'16 d8. h'16 c,4\trill h |
		d16 cis d e d8 r gis16 fis gis a gis8 r |
		h4 h2 d,4 |
		cis8. a'16 e8. cis'16 d,4\trill cis |
		e16 d e fis g8 r e16 d e fis g8 r |
		fis16 e fis g a fis e d a2\trill |
		fis'16 e fis g a fis e d a2\trill |
		fis'4 d'2 fis,4\trill |
		g d'2 g,4\trill |
		a d2 a4\trill |
		h d2 d,4\trill |
		cis a'2 cis,4\trill |
		d a'2 d,4\trill |
		e a2 e4\trill |
		fis a2 fis4\trill |
		h16 a h cis d8 r g,16 fis g a h8 r |
		e,16 d e fis g fis e d cis h cis d e d cis h |
		a2 g'\trill |
		fis4 a fis d |
		a2 e'\trill |
		fis4 d' h g |
		fis16 e d4. e2\trill |
		<<{d16_"Flauto solo" cis d e}\\{d4}>> f8 r r a g f |
		e16 d e f g8 r r b a g |
		f16 e f g a8 r r cis d f, |
		f4\trill e r2 |
		g16_"tutti" fis e d cis h a g g' fis e d cis h a g |
		fis8 d' d d d2\trill |
		g16 fis e d cis h a g g' fis e d cis h a g |
		fis8 d' d d d2\trill |
		h16 a h cis h8 r h'16 a g fis e d cis h |
		a g a h a8 r a'16 g fis e d cis h a |
		g fis g a g8 r g'16 fis e d cis h a g |
		fis8 d' d4\trill a'8 d, d4\trill |
		h'8 d, d4\trill cis'8 d, d4\trill |
		d'16 cis h a g fis e d h' a g fis e d cis h |
		a2 e'\trill |
		d'16 cis h a g fis e d h' a g fis e d cis h |
		a2 e'\trill |
		d8 d16 cis d8 h a g fis e |
		d d'16 cis d8 h a g fis e |
		fis d' g, d' a d h d |
		fis, d' g, d' a d h g |
		a4 a d,2\fermata |

	\bar "|."
	}

}
staffOboeII = \new Staff  {
	\set Staff.instrumentName="Oboe II e Flauto traverso II"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c'' {
		d4 d, r8 d'16 e fis8.\trill e32 d |
		a'4 a, r8 a'16 h cis8.\trill h32 a |
		d8 d, d d d2\trill |
		e4.\trill h'8 a8. g16 fis8.\trill e16 |
		fis16 g a8 d, d d2\trill |
		e4.\trill h'8 a8. g16 fis8.\trill e16 |
		fis16 e d8 d d d2\trill |
		fis16 e fis g a fis e d a2\trill |
		fis'16 e fis g a fis e d a2\trill |
		\appoggiatura g'8 fis16 e fis g fis8 r \appoggiatura g8 fis16 e fis g fis8 r |
		\appoggiatura a8 g16 fis g a g8 r \appoggiatura a8 g16 fis g a g8 r |
		\appoggiatura a8 gis16 fis gis a gis8 r gis16 fis gis a gis8 r |
		a16 gis fis e d cis h a a' gis fis e d cis h a |
		fis'8. a16 e8. a16 d,4\trill cis8 r |
		gis16 fis gis a h8 r r h a gis |
		a16 gis a h cis8 r r a gis fis |
		gis16 fis gis a h8 r r h a gis |
		a16 gis a h cis8 r r cis h a |
		fis'4 fis2 d4 |
		cis e2 cis4 |
		h d2 h4 |
		a8 a4 a8 a a4 a8 |
		a a4 a8 a a4 a8 |
		fis fis4 fis8 h h4 h8 |
		h h4 h8 h h4 h8 |
		h h4 h8 h h4 h8 |
		cis4 a r8 a d fis |
		h,8 h4 h8 h h4 h8 |
		a'16 gis fis e d cis h a fis' e d cis h a gis fis |
		e2 gis |
		a4 r r8 a16 h cis8.\trill h32 a |
		e'4 e, r8 e'16 fis gis8.\trill fis32 e |
		a8 a, a a a2\trill |
		h4.\trill fis'8 e8. d16 cis8.\trill h16 |
		cis16 h a8 a a a2\trill |
		h4.\trill fis'8 e8. d16 cis8.\trill h16 |
		cis h a8 a4 r2 |
		fis16 gis ais h cis8 r cis16 h cis d e8 e |
		e4( d8) cis h( cis) cis( d) |
		e4( d8) cis d cis h4 |
		e16 d e fis e8 r d16 cis d e d8 r |
		cis4 cis2 cis4 |
		cis e2 cis4 |
		d16 cis d e fis d cis h fis2\trill |
		d'16 cis d e fis d cis h fis2\trill |
		d'8 d d d dis2\trill |
		e8 e e e eis2\trill |
		fis4 fis2 d4 |
		cis cis2 e,4 |
		d16 cis d e d8 r fis16 e fis g fis8 r |
		h16 ais h cis h8 r fis'16 e fis g fis8 r |
		h16 a g fis e d cis h g' fis e d cis h ais gis |
		fis2 ais\trill |
		h'16 a g fis e d cis h g' fis e d cis h ais gis |
		fis2 ais\trill |
		h r4 r8 h |
		a a a a' a4( g8) fis |
		h, h h h e16 fis gis a h8 d, |
		d4( cis8) g'8 g4( fis8) e |
		d16 cis d e fis d e fis g fis g a h8 r |
		e,16 d e fis g8 r g,16 fis g a h a g fis |
		e2 r |
		d'4 d, r8 d'16 e fis8.\trill e32 d |
		a'4 a, r8 a'16 h cis8.\trill h32 a |
		d8 d, d d d2\trill |
		e4. h'8 a8. g16 fis8.\trill e16 |
		fis g a8 d, d d2\trill |
		e4.\trill h'8 a8. g16 fis8.\trill e16 |
		fis e d8 d4 r2 |
		a16 g a h a8 r a16 g a h a8 r |
		a'4 a2 c,4 |
		h8. g'16 d8. h'16 c,4\trill h |
		h16 a h cis h8 r h16 a h cis h8 r |
		h'4 h2 d,4 |
		cis8. a'16 e8. cis'16 d,4\trill cis |
		cis16 h cis d e8 r cis16 h cis d e8 r |
		fis16 e fis g a fis e d a2\trill |
		fis'16 e fis g a fis e d a2\trill |
		fis'4 fis2 fis4\trill |
		g g2 g4\trill |
		a a2 a4\trill |
		h h2 d,4\trill |
		cis cis2 cis4\trill |
		d d2 d4\trill |
		e e2 e4\trill |
		fis fis2 fis4\trill |
		g16 fis g a h8 r e,16 d e fis g8 r |
		g,16 fis g a h a g fis e d e fis g h a g |
		a2 g'2\trill |
		fis4 fis d a |
		a2 g'2\trill |
		fis4 fis d d |
		d d2\trill cis4 |
		<<{d}\\{f,16_"Flauto solo" e f g}>> a8 r r f' e d |
		cis16 h cis d e8 r r g f e |
		d16 cis d e f8 r r e f d |
		d4\trill cis r2 |
		g'16_"tutti" fis e d cis h a g g' fis e d cis h a g |
		fis8 d' d d d2\trill |
		g16 fis e d cis h a g g' fis e d cis h a g |
		fis8 d' d d d2\trill |
		h16 a h cis h8 r h'16 a g fis e d cis h |
		a g a h a8 r a'16 g fis e d cis h a |
		g fis g a g8 r g'16 fis e d cis h a g |
		fis8 d' d4\trill a'8 d, d4\trill |
		h'8 d, d4\trill cis'8 d, d4\trill |
		d'16 cis h a g fis e d h' a g fis e d cis h |
		a2 cis\trill |
		d'16 cis h a g fis e d h' a g fis e d cis h |
		a2 cis\trill |
		d8 d16 cis d8 h a g fis e |
		d d'16 cis d8 h a g fis e |
		fis d' g, d' a d h d |
		fis, d' g, d' a d h g |
		a4 a d,2\fermata |

	\bar "|."
	}

}
staffHornInF = \new Staff  {
	\set Staff.instrumentName="Corno da caccia I"
	\set Staff.midiInstrument="french horn"
	\transposition d
	\key c \major
	\clef treble
	\relative c'' {
		e4 e r8 e e c |
		g'4 g r8 g g g |
		c c, c c c4\trill r8 c' |
		a2 h\trill |
		c4 c, r c' |
		a2 g4 f |
		e8 c c c c2\trill |
		r8 e g e d4 g |
		r8 e g e d4 g |
		r8 c, c c c4 r |
		r8 c c c c4 r |
		r8 d d d d4 r |
		r8 d d d d4 r |
		R1*5 |
		e4 e2 e4 |
		d d2 d4 |
		fis fis2 fis4 |
		g d r8 d d d |
		e4 e r2 |
		e4 e r8 e e e |
		d4 d r2 |
		d4 d r8 d d d |
		g,4 g r2 |
		d'4 d r8 d d d |
		g,4 g r g' |
		g g fis2\trill |
		g r |
		R1*11 |
		d8 d d d d d d d |
		r c e c d4 d |
		r8 c e c d4 d |
		R1*2 |
		r8 e, e e e2 |
		R1*3 |
		r8 e' e e r f f d |
		r4 e e e |
		r8 e e e r f f d |
		r4 e, e e |
		c2 r |
		R1*6 |
		e'4 e r8 e e c |
		g'4 g r8 g g g |
		c c, c c c4\trill r8 c' |
		a2 h\trill |
		c4 c, r c' |
		a2 g4 f |
		e8 c c4 r2 |
		R1 |
		g'4 g2 g4 |
		f8. f16 a8. a16 g4\trill f |
		R1 |
		a4 a2 a4 |
		g8. g16 h8. h16 a4\trill g |
		f8 f f f f f f f |
		r e g e d4 g |
		r8 e g e d4 g |
		e8 e e e e2\trill |
		f8 f f f f2\trill |
		g8 g g g g2\trill |
		a8 a a g f4 e |
		d8 d d d d2\trill |
		c8 c c c c2\trill |
		d8 d d d d2\trill |
		e8 e e e e2\trill |
		a4 r a r |
		f r d r |
		g g f2\trill |
		e4 g e c |
		c2 d\trill |
		e4 c' a f |
		e e d2\trill |
		c4 r r2 |
		R1*3 |
		f8 f f f f f f f |
		e e e e e2\trill |
		f8 f f f f f f f |
		e e e e e2\trill |
		a4 r a8 a a a |
		g4 r g8 g g g |
		f4 r f8 f f f |
		e4 r r8 g g g |
		a2 h |
		c4 c, r f |
		e e d2\trill |
		c r4 f |
		e e d2\trill |
		c4 r8 a' g f e d |
		c4 r8 a' g f e d |
		e4 f g a |
		e f g8 c a f |
		g4 g, c2\fermata |
	\bar "|."
	}

}
staffHornInFII = \new Staff  {
	\set Staff.instrumentName="Corno da caccia II"
	\set Staff.midiInstrument="french horn"
	\transposition d
	\key c \major
	\clef treble
	\relative c'' {
		c4 c r8 c c c |
		d4 d r8 d d d |
		e e e e e4 c |
		f2 d\trill |
		e4 e r c |
		f2 d\trill |
		c8 e, e e e2 |
		r8 c' e c g4 d' |
		r8 c e c g4 d' |
		r8 c c c c4 r |
		r8 c c c c4 r |
		r8 d d d d4 r |
		r8 d d d d4 r |
		R1*5 |
		c4 c2 c4 |
		g g2 g4 |
		d' d2 d4 |
		g, g r8 g g g |
		c4 c r2 |
		e4 e r8 e e e |
		d4 d r2 |
		d4 d r8 d d d |
		g,4 g r2 |
		d'4 d r8 d d d |
		g,4 g r e' |
		d d d d |
		g,2 r |
		R1*11 |
		e8 e e e e e e e |
		r e e e e2 |
		r8 e e e e2 |
		R1*2 |
		r8 e e e e2 |
		R1*3 |
		r8 c' c c r d d d |
		r4 e e e |
		r8 c c c r d d d |
		r4 e, e e |
		c2 r |
		R1*6 |
		c'4 c r8 c c c |
		d4 d r8 d d d |
		e e e e e4 c |
		f2 d\trill |
		e4 e r c |
		f2 d\trill |
		c8 g e4 r2 |
		R1 |
		e'4 e2 e4 |
		c8 c c c c4 c |
		R1 |
		fis4 fis2 fis4 |
		d8 d d d d4 d |
		d8 d d d d d d d |
		r c e c g4 d' |
		r8 c e c g4 d' |
		c8 c c c c2\trill |
		c8 c c c c2\trill |
		c8 c c c c2\trill |
		f8 f f e d4 c |
		g8 g g g g g g g |
		g g g g g g g g |
		g g g g g g g g |
		c c c c c2\trill |
		c4 r f r |
		d r g, r |
		g g d'2\trill |
		c4 e c g |
		g g g g |
		c c c c |
		c c g g |
		c, r r2 |
		R1*3 |
		d'8 d d d d d d d |
		c c c c c2\trill |
		d8 d d d d d d d |
		c c c c c2\trill |
		c4 r c8 c c c |
		c4 r c8 c c c |
		d4 r d8 d d d |
		c4 r r8 c c c |
		c c c c g g g g |
		c,2 r4 d' |
		c c g2\trill |
		c, r4 d' |
		c c g2\trill |
		c,4 r8 a'' g f e d |
		c4 r8 a' g f e d |
		e4 f g a |
		e f g a8 f |
		g4 g, c2\fermata |
	\bar "|."
	}

}
staffViolin = \new Staff  {
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key d \major
	\clef treble
	\relative c'' {
		d4 d, r8 d'16 e fis8.\trill e32 d |
		a'4 a, r8 a'16 h cis8.\trill h32 a |
		d8 d, d d d2\trill |
		e4.\trill h'8 a8. g16 fis8.\trill e16 |
		fis16 g a8 d, d d2\trill |
		e4.\trill h'8 a8. g16 fis8.\trill e16 |
		fis16 e d8 d d d2\trill |
		fis16 e fis g a fis e d a2\trill |
		fis'16 e fis g a fis e d a2\trill |
		\appoggiatura g'8 fis16 e fis g fis8 r \appoggiatura g8 fis16 e fis g fis8 r |
		\appoggiatura a8 g16 fis g a g8 r \appoggiatura a8 g16 fis g a g8 r |
		\appoggiatura a8 gis16 fis gis a gis8 r gis16 fis gis a gis8 r |
		a16 gis fis e d cis h a a' gis fis e d cis h a |
		fis'8. a16 e8. a16 d,4\trill cis8 r |
		h16 a h cis d8 r r d cis h |
		cis16 h cis d e8 r r cis h a |
		h16 a h cis d8 r r d cis h |
		cis16 h cis d e8 r r cis h a |
		fis'16 fis fis fis d' d d d d d d d fis, fis fis fis |
		e e e e cis' cis cis cis cis cis cis cis e, e e e |
		d d d d h' h h h h h h h d, d d d |
		cis cis cis cis cis cis cis cis cis cis cis cis cis cis cis cis |
		d e fis g a8 r r2 |
		dis,16 dis dis dis dis dis dis dis dis dis dis dis dis dis dis dis |
		e fis gis a h8 r r2 |
		gis16 gis gis gis gis gis gis gis gis gis gis gis gis gis gis gis |
		a gis fis e d cis h a a' gis fis e d cis h a |
		gis' gis gis gis gis gis gis gis gis gis gis gis gis gis gis gis |
		a gis fis e d cis h a fis' e d cis h a gis fis |
		e2 h'\trill |
		a4 a, r8 a'16 h cis8.\trill h32 a |
		e'4 e, r8 e'16 fis gis8.\trill fis32 e |
		a8 a, a a a2\trill |
		h4.\trill fis'8 e8. d16 cis8.\trill h16 |
		cis16 h a8 a a a2\trill |
		h4.\trill fis'8 e8. d16 cis8.\trill h16 |
		cis h a8 a4 r2 |
		cis16 h cis d e8 r e16 d e fis g8 g |
		g4( fis8) e d( ais') ais( h) |
		g4( fis8) e d cis h4 |
		g'16 fis g a g8 r fis16 e fis g fis8 r |
		e16 e e e e e e e e e e e e e e e |
		e e e e cis' cis cis cis cis cis cis cis e, e e e |
		d cis d e fis d cis h fis2\trill |
		d'16 cis d e fis d cis h fis2\trill |
		d'16 d d d d d d d dis dis dis dis dis dis dis dis |
		e e e e e e e e eis eis eis eis eis eis eis eis |
		fis gis ais h cis g fis e d fis gis ais h d, cis h |
		cis d e fis g e cis h ais h cis d cis g fis e |
		d cis d e d8 r fis16 e fis g fis8 r |
		h16 ais h cis h8 r fis'16 e fis g fis8 r |
		h16 a g fis e d cis h g' fis e d cis h ais gis |
		fis2 cis'\trill |
		h'16 a g fis e d cis h g' fis e d cis h ais gis |
		fis2 cis'\trill |
		h r4 r8 e |
		e4( dis8) c' c4( h8) a |
		a4 gis r r8 d |
		d4( cis8) h' h4( a8) g |
		fis16 e fis g a fis g a h a h cis d8 r |
		g,16 fis g a h8 r e,16 d e fis g fis e d |
		cis h a8 a4 r2 |
		d4 d, r8 d'16 e fis8.\trill e32 d |
		a'4 a, r8 a'16 h cis8.\trill h32 a |
		d8 d, d d d2\trill |
		e4. h'8 a8. g16 fis8.\trill e16 |
		fis16 g16 a8 d, d d2\trill |
		e4.\trill h'8 a8. g16 fis8.\trill e16 |
		fis16 e d8 d4 r2 |
		c16 h c d c8 r fis16 e fis g fis8 r |
		a16 g fis e d c h a c' h a g fis e d c |
		h8. g'16 d8. h'16 c,4\trill h |
		d16 cis d e d8 r gis16 fis gis a gis8 r |
		h16 a gis fis e d cis h d' cis h a gis fis e d |
		cis8. a'16 e8. cis'16 d,4\trill cis |
		e16 d e fis g8 r e16 d e fis g8 r |
		fis16 e fis g a fis e d a2\trill |
		fis'16 e fis g a fis e d a2\trill |
		fis'16 fis fis fis d' d d d d d d d fis,4\trill |
		g16 g g g d' d d d d d d d g,4\trill |
		a16 a a a d d d d d d d d a4\trill |
		h16 h h h d d d d d d d d d,4\trill |
		cis16 cis cis cis a' a a a a a a a cis,4\trill |
		d16 d d d a' a a a a a a a d,4\trill |
		e16 e e e a a a a a a a a e4\trill |
		fis16 fis fis fis a a a a a a a a d,4\trill |
		h'16 a h cis d8 r g,16 fis g a h8 r |
		e,16 d e fis g fis e d cis h cis d e d cis h |
		a2\trill g'\trill |
		fis16 fis fis fis a a a a fis fis fis fis d d d d |
		a2\trill e'\trill |
		fis16 fis fis fis d' d d d cis cis cis cis g g g g |
		fis e d4. e2\trill |
		d16 cis d e f8 r r a g f |
		e16 d e f g8 r r b a g |
		f16 e f g a8 r r cis d f, |
		f4\trill e r2 |
		g16 fis e d cis h a g g' fis e d cis h a g |
		fis d' d d d d d d d2\trill |
		g16 fis e d cis h a g g' fis e d cis h a g |
		fis d' d d d d d d d2\trill |
		h16 a h cis h8 r h'16 a g fis e d cis h |
		a g a h a8 r a'16 g fis e d cis h a |
		g fis g a g8 r g'16 fis e d cis h a g |
		fis8 d' d4\trill a'8 d, d4\trill |
		h'8 d, d4\trill cis'8 d, d4\trill |
		d'16 cis h a g fis e d h' a g fis e d cis h |
		a2 e'\trill |
		d'16 cis h a g fis e d h' a g fis e d cis h |
		a2\trill e'\trill |
		d8 d16 cis d8 h a g fis e |
		d d'16 cis d8 h a g fis e |
		fis d' g, d' a d h d |
		fis, d' g, d' a d h g |
		a4 a, d2\fermata |
		

	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key d \major
	\clef treble
	\relative c'' {
		d4 d, r8 d'16 e fis8.\trill e32 d |
		a'4 a, r8 a'16 h cis8.\trill h32 a |
		d8 d, d d d2\trill |
		e4.\trill h'8 a8. g16 fis8.\trill e16 |
		fis16 g a8 d, d d2\trill |
		e4.\trill h'8 a8. g16 fis8.\trill e16 |
		fis16 e d8 d d d2\trill |
		fis16 e fis g a fis e d a2\trill |
		fis'16 e fis g a fis e d a2\trill |
		\appoggiatura g'8 fis16 e fis g fis8 r \appoggiatura g8 fis16 e fis g fis8 r |
		\appoggiatura a8 g16 fis g a g8 r \appoggiatura a8 g16 fis g a g8 r |
		\appoggiatura a8 gis16 fis gis a gis8 r gis16 fis gis a gis8 r |
		a16 gis fis e d cis h a a' gis fis e d cis h a |
		fis'8. a16 e8. a16 d,4\trill cis8 r |
		gis16 fis gis a h8 r r h a gis |
		a16 gis a h cis8 r r a gis fis |
		gis16 fis gis a h8 r r h a gis |
		a16 gis a h cis8 r r cis h a |
		fis'16 fis fis fis fis fis fis fis fis fis fis fis d d d d |
		cis cis cis cis e e e e e e e e cis cis cis cis |
		h h h h d d d d d d d d h h h h |
		a a a a a a a a a a a a a a a a |
		a a a a a a a a a a a a a a a a |
		fis fis fis fis fis fis fis fis h h h h h h h h |
		h h h h h h h h h h h h h h h h |
		h h h h h h h h h h h h h h h h |
		a' gis fis e d cis h a a' gis fis e d cis h a |
		h h h h h h h h h h h h h h h h |
		a' gis fis e d cis h a fis' e d cis h a gis fis |
		e2 gis\trill |
		a4 a, r8 a'16 h cis8.\trill h32 a |
		e'4 e, r8 e'16 fis gis8.\trill fis32 e |
		a8 a, a a a2\trill |
		h4.\trill fis'8 e8. d16 cis8.\trill h16 |
		cis16 h a8 a a a2\trill |
		h4.\trill fis'8 e8. d16 cis8.\trill h16 |
		cis16 h a8 a4 r2 |
		fis16 gis ais h cis8 r cis16 h cis d e8 e |
		e4( d8) cis h( cis) cis( d) |
		e4( d8) cis d cis h4 |
		e16 d e fis e8 r d16 cis d e d8 r |
		cis16 cis cis cis cis cis cis cis cis cis cis cis cis cis cis cis |
		cis cis cis cis e e e e e e e e cis cis cis cis |
		d cis d e fis d cis h fis2\trill |
		d'16 cis d e fis d cis h fis2\trill |
		d'16 d d d d d d d dis dis dis dis dis dis dis dis |
		e e e e e e e e eis eis eis eis eis eis eis eis |
		fis gis ais h cis g fis e d fis gis ais h d, cis h |
		cis d e fis g e cis h ais h cis d cis g fis e |
		d cis d e d8 r fis16 e fis g fis8 r |
		h16 ais h cis h8 r fis'16 e fis g fis8 r |
		h16 a g fis e d cis h g' fis e d cis h ais gis |
		fis2 ais\trill |
		h'16 a g fis e d cis h g' fis e d cis h ais gis |
		fis2 ais\trill |
		h r4 r8 h |
		a a a a' a4( g8) fis |
		h, h h h e16 fis gis a h8 d, |
		d4( cis8) g' g4( fis8) e |
		d16 cis d e fis d e fis g fis g a h8 r |
		e,16 d e fis g8 r g,16 fis g a h a g fis |
		e2 r |
		d'4 d, r8 d'16 e fis8.\trill e32 d |
		a'4 a, r8 a'16 h cis8.\trill a32 h |
		d8 d, d d d2\trill |
		e4. h'8 a8. g16 fis8. e16 |
		fis g a8 d, d d2\trill |
		e4.\trill h'8 a8. g16 fis8. e16 |
		fis e d8 d4 r2 |
		a16 g a h a8 r a16 g a h a8 r |
		a'16 g fis e d c h a c' h a g fis e d c |
		h8. g'16 d8. h'16 c,4\trill h |
		h16 a h cis h8 r h16 a h cis h8 r |
		h'16 a gis fis e d cis h d' cis h a gis fis e d |
		cis8. a'16 e8. cis'16 d,4\trill cis |
		cis16 h cis d e8 r cis16 h cis d e8 r |
		fis16 e fis g a fis e d a2\trill |
		fis'16 e fis g a fis e d a2\trill |
		fis'16 fis fis fis fis fis fis fis fis fis fis fis fis4\trill |
		g16 g g g g g g g g g g g g4\trill |
		a16 a a a a a a a a a a a a4\trill |
		h16 h h h h h h h h h h h d,4\trill |
		cis16 cis cis cis cis cis cis cis cis cis cis cis cis4\trill |
		d16 d d d d d d d d d d d d4\trill |
		e16 e e e e e e e e e e e e4\trill |
		fis16 fis fis fis fis fis fis fis fis fis fis fis fis4\trill |
		g16 fis g a h8 r e,16 d e fis g8 r |
		g,16 fis g a h a g fis e d e fis g h a g |
		a2 g'\trill |
		fis16 fis fis fis fis fis fis fis d d d d a a a a |
		a2 e'\trill |
		fis16 fis fis fis fis fis fis fis d d d d d d d d |
		d4 d2 cis4 |
		f,16 e f g a8 r r f' e d |
		cis16 h cis d e8 r r g f e |
		d16 cis d e f8 r r e f d |
		d4\trill cis r2 |
		g'16 fis e d cis h a g g' fis e d cis h a g |
		fis d' d d d d d d d2\trill |
		g16 fis e d cis h a g g' fis e d cis h a g |
		fis d' d d d d d d d2\trill |
		h16 a h cis h8 r h'16 a g fis e d cis h |
		a g a h a8 r a'16 g fis e d cis h a |
		g fis g a g8 r g'16 fis e d cis h a g |
		fis8 d' d4 a'8 d, d4\trill |
		h'8 d, d4\trill cis'8 d, d4\trill |
		d'16 cis h a g fis e d h' a g fis e d cis h |
		a2 cis\trill |
		d'16 cis h a g fis e d h' a g fis e d cis h |
		a2 cis\trill |
		d8 d16 cis d8 h a g fis e |
		d d'16 cis d8 h a g fis e |
		fis d' g, d' a d h d |
		fis, d' g, d' a d h g |
		a4 a, d2 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key d \major
	\clef alto
	\relative c' {
		fis8 fis fis fis fis fis fis fis |
		e e e e e e e e |
		fis fis fis fis a a a a |
		h h h h cis cis cis cis |
		d fis, fis fis a a a a |
		h h h h cis cis cis cis |
		d fis, fis fis fis16 d' cis h a g fis e |
		d8 d d d e16 fis g fis e d cis h |
		a8 a a a e'16 fis g fis e d cis h |
		a8 a a a d d d d |
		d d d d d d d d |
		h h h h e e e e |
		e e e e e e e e |
		a a a a gis gis a a |
		e e e e e e e e |
		e e e e e e e e |
		e e e e e e e e |
		e e e e e e e e |
		d d d d d d d d |
		a' a a a a a a a |
		gis gis gis gis gis gis gis gis |
		e16 e e e e e e e e e e e e e e e |
		fis fis fis fis fis fis fis fis fis fis fis fis fis fis fis fis |
		fis fis fis fis fis fis fis fis fis fis fis fis fis fis fis fis |
		gis gis gis gis gis gis gis gis gis gis gis gis gis gis fis fis |
		e e e e e e e e e e e e e e e e |
		e8 e e e fis fis fis fis |
		e16 e e e e e e e e e e e e e e e |
		e8 e e e d d d d |
		e e e e e e e e |
		cis cis cis cis cis cis cis cis |
		h h h h h h h h |
		cis cis cis cis e e e e |
		fis fis fis fis gis gis gis gis |
		a cis, cis cis e e e e |
		fis fis fis fis gis gis gis gis |
		a a a a a g16 fis e d cis h |
		ais8 ais ais ais ais ais ais ais |
		ais ais ais ais h h h h |
		ais ais ais ais h h h h |
		h h h h h h h h |
		cis cis cis cis h h h h |
		ais ais ais ais ais ais ais ais |
		h h h h cis16 d e d cis h ais gis |
		fis8 fis fis fis cis'16 d e d cis h ais gis |
		fis fis' fis fis fis fis fis fis h h h h h h h h |
		h h h h h h h h h h h h h h h h |
		ais8 ais ais ais fis fis fis fis |
		g g g g cis, ais ais ais |
		h h h h cis cis cis cis |
		d d d h' ais ais ais cis |
		fis, fis fis fis e g g e |
		fis fis fis fis fis fis fis fis |
		fis fis fis fis e g g e |
		fis fis fis fis fis fis fis fis |
		h, h'16 cis h8 a g g g g |
		fis fis fis e dis dis dis dis |
		e e e e e e e e |
		a a a g cis, cis cis cis |
		d d d d g, g g g |
		g g g g g g g g |
		a h16 cis d e fis g a8 g fis e |
		fis fis fis fis fis fis fis fis |
		e e e e e e e e |
		fis fis fis fis a a a a |
		h h h h cis cis cis cis |
		d fis, fis fis a a a a |
		h h h h cis cis cis cis |
		d, e16 fis g a h cis d8 a fis a |
		fis fis fis fis d d d d |
		fis fis fis fis fis fis fis fis |
		d d g g fis fis g4 |
		gis8 gis gis gis e e e e |
		gis gis gis gis gis gis gis gis |
		e e a a gis gis a4 |
		a8 a a a a a cis, cis |
		a a a a e'16 fis g fis e d cis h |
		a8 a a a e'16 fis g fis e d cis h |
		a8 a' a a a a a a |
		g g g g g g g g |
		fis fis fis fis fis fis fis fis |
		g g g g g g h h |
		e, e e e e e e e |
		d d d d d d d d |
		cis cis cis cis cis cis cis cis |
		d d d d d d d d |
		d d d d e e e e |
		e e e e e e e e |
		fis fis fis fis cis cis cis cis |
		d d d d d d d d |
		d d d d cis cis cis cis |
		d d d d d d h' h |
		a a a a a a a a |
		d, d d d d d d d |
		a' a a a a a a a |
		d, d d d d d d d |
		a' a, a a a16 a' g fis e d cis h |
		cis8 cis cis cis e e e e |
		fis fis fis fis g16 a h a g fis e d |
		cis8 cis cis cis e e e e |
		fis fis fis fis a16 g fis g a g a fis |
		d8 d d d d d d d |
		d d d d d d d d |
		d d d d cis cis cis cis |
		d16 fis fis fis fis fis fis fis d a' a a a a a a |
		d, h' h h h h h h a fis fis fis fis fis fis fis |
		fis8 fis fis fis g h h g |
		a a a a a a a a |
		a a a a g h h g |
		a a a a g g g g |
		fis d'16 cis d8 h a g fis e |
		d d'16 cis d8 h a g fis e |
		fis d' g, d' a d h d |
		fis, d' g, d' a d h g |
		a4 a, d2\fermata |
	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key d \major
	\clef bass
	\relative c' {
		d8 d d d d d d d |
		cis cis cis cis cis cis cis cis |
		h h h h fis fis fis fis |
		g g g g a a a a |
		d, d d d fis fis fis fis |
		g g g g a a a a |
		d, d d d d16 d' cis h a g fis e |
		d8 d d d cis cis cis cis |
		d d d d cis cis cis cis |
		d d d d c c c c |
		h h h h h h h h |
		e e e e d d d d |
		cis cis cis cis cis cis cis cis |
		d d cis cis h h a a |
		e' e e e e e e e |
		e e e e e e e e |
		e e e e e e e e |
		a a a a a a a a |
		d, d d d d d d d |
		a' a a a a a a a |
		e e e e e e e e |
		a a a a g g g g |
		fis fis fis fis fis fis fis fis |
		h h h h a a a a |
		gis gis gis gis gis gis fis fis |
		e e e e d d d d |
		cis cis cis cis d d d d |
		e e e e d d d d |
		cis cis cis cis d d d d |
		e e e e e e e e |
		a a a a a a a a |
		gis gis gis gis gis gis gis gis |
		fis fis fis fis cis cis cis cis |
		d d d d e e e e |
		a, a a a cis cis cis cis |
		d d d d e e e e |
		a, a a a a g'16 fis e d cis h |
		ais8 ais ais ais ais ais ais ais |
		ais ais ais ais h h h h |
		ais ais ais ais h h h h |
		h h h h h h h h |
		cis cis cis cis h h h h |
		ais ais ais ais ais ais ais ais |
		h h h h ais ais ais ais |
		h h h h ais ais ais ais |
		h h h h a a a a |
		gis gis gis gis g g g g |
		fis fis fis fis h h h h |
		e e e e fis fis fis fis |
		h h h h a a a a |
		g g g g fis fis fis e |
		d d d d e e e e |
		fis fis fis fis fis fis fis fis |
		d d d d e e e e |
		fis fis fis fis fis fis fis fis |
		h,2 r |
		R1*5 |
		r16 a h cis d e fis g a8 g fis e |
		d d d d d d d d |
		cis cis cis cis cis cis cis cis |
		h h h h fis' fis fis fis |
		g g g g a a a a |
		d, d d d fis fis fis fis |
		g g g g a a a a |
		d, e16 fis g a h cis d8 a fis a |
		d, d d d d d d d |
		d d d d d d d d |
		g g g g a d, g4 |
		e8 e e e e e e e |
		e e e e e e e e |
		a a a a h e, a4 |
		a,8 a a a a a a a |
		d d d d cis cis cis cis |
		d d d d cis cis cis cis |
		d d d d d d d d |
		e e e e e e e e |
		fis fis fis fis fis fis fis fis |
		g g g g g g gis gis |
		a, a a a a a a a |
		h h h h h h h h |
		cis cis cis cis cis cis cis cis |
		d d d d d d d d |
		g g g g g g g g |
		g g g g g g g g |
		fis fis fis fis e e e e |
		d d d d d d fis fis |
		a a a a a a a a |
		d, d d d g g g g |
		a a a a a a a a |
		d,4 r r2 |
		R1*2 |
		r8 a a a a16 a' g fis e d cis h |
		a8 a a a cis cis cis cis |
		d d d d fis16 a g fis e d cis h |
		a8 a a a cis cis cis cis |
		d d d d fis16 e d e fis e fis d |
		g8 g g g g g g g |
		fis fis fis fis fis fis fis fis |
		e e e e a, a a a |
		d16 d d d d d d d fis fis fis fis fis fis fis fis |
		g g g g g g g g a a a a a a a a |
		h8 h h h g g g g |
		a a a a a a a a |
		fis fis fis fis g g g g |
		a a a a a a a a |
		d, d'16 cis d8 h a g fis e |
		d d'16 cis d8 h a g fis e |
		fis d' g, d' a d h d |
		fis, d' g, d' a d h g |
		a4 a, d2\fermata
	\bar "|."
	}

}


\score {
	<<
		\staffOboe
		\staffOboeII
		\staffHornInF
		\staffHornInFII
		\staffViolin
		\staffViolinII
		\staffViola
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
		indent = 45
	}
}

#(set-default-paper-size "a4" 'landscape)

\paper {
}


