\version "2.10.7"

\header {
	title = "Del destin non vi lagnate"
	composer = "A. Vivaldi (1678-1741)"
	mutopiatitle = "Del destin non vi lagnate, Aria from L'Olimpiade"
	mutopiacomposer = "VivaldiA"
	mutopiainstrument = "Voice (Tenor), String Ensemble, Basso Continuo"
	mutopiapoet = "P. Metastasio (1698-1782)"
	mutopiaopus = "RV 725" 
	date = "1734"
	source = "Autograph, 1734"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/04/01-933"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Del de -- stin non vi la -- gna -- te, non vi la -- gna -- te se vi re -- se à noi sog -- get -- te, à noi sog -- get -- te sie -- te ser -- ve mà re -- gna -- te nel -- la no -- stra ser -- vi -- tù. Del de -- stin non vi la -- gna -- te, del de -- stin non vi la -- gna -- te, non vi la -- gna -- te sie -- te, ser -- ve mà re -- gna -- te, mà re -- gna -- te nel -- la no -- stra ser -- vi -- tù re -- gna -- te nel -- la no -- stra nel -- la no -- stra ser -- vi -- tù. For -- ti noi, voi bel -- le sie -- te e vin -- ce -- te_in og -- ni_im -- pre -- sa quan -- do ven -- go -- no_à con -- te -- sa la bel -- lez -- za e la vir -- tù, e la vir -- tù.
}
 

staffViolin = \new Staff  {
	\time 2/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 90
	\set Staff.instrumentName="Violini"
	\set Staff.midiInstrument="violin"
	\key es \major
	\clef treble
	\relative c' {
		es8. c'16 b as g f |
		es8. es'16 d c b as |
		g8. g'16 f es d c |
		b4. c16 d |
		es8 es, r8 g |
		as16 f b,8~ b16 c' b as |
		g es g,8~ g16 b' es g, |
		as f b,8~ b16 c' b as |
		g f es8 r4 |
		b''8 a16 g f es d c |
		b8 b, d f |
		b16 c d es f8 f, |
		g16 es g,8~ g16 d'' c b |
		a f a,8~ a16 es'' d c |
		b g b,8~ b16 f'' es d |
		c a f8~ f16 es' d c |
		d b f8~ f16 b' f d |
		c a f8~ f16 es' d c |
		d b f d' c a f c' |
		d b f d' c a f c' |
		b4 r |
		b8. c16 b as g f |
		es8. es'16 d c b as |
		g8. g'16 f es d c |
		b4. c16 d |
		es8 es, r g |
		as16 f b,8~ b16 c' b as |
		g es g,8~ g16 b' es g, |
		as f b,8~ b16 c' b as |
		g es b8~ b16 b' es g |
		<b, d>4 <b d> |
		d8 c16 d es d es c |
		d8 c16 d es d es c |
		d8 c16 b a8 g |
		g f r4 |
		b, d8 f |
		b d16 es f8 f, |
		g16 es b8~ b16 g' a b |
		a f c8~ c16 a' b c |
		b g d8~ d16 b' c d |
		c a es8~ es16 c' d es |
		b'8 a16 g f es d c |
		b8 b' es, f |
		b,8. g16 f es d c |
		b8. b'16 a g f es |
		d8. d'16 c b a g |
		f8. g'16 f es d c |
		d b f8~ f16 f' b d, |
		c a f8~ f16 f' a c, |
		d8 b' c, a' |
		b,8. g'16 f es d c |
		b8. c16 b as g f |
		es8. es'16 d c b as |
		g8. g'16 f es d c |
		b4. c16 des |
		c8. as'16 g f es d |
		c8. d16 c b a g |
		f8. f'16 es d c b |
		a8. a'16 g f es d |
		c4. d16 es |
		d c b8 r g |
		as16 f b,8~ b16 c' b as |
		g es b8~ b16 b' es g, |
		as f b,8~ b16 c' b as |
		g f es8 b' b |
		c16 b as b c8 c |
		d16 c b c d8 d |
		es d16 c b as g f |
		g8 f16 es f8 d |
		es4 r8 g |
		f16 d b8~ b16 f' g as |
		g es b8~ b16 g' as b |
		as f b,8~ b16 as' b c |
		b g b,8~ b16 b' c d |
		es8 d c b |
		as g f es |
		b'2\trill |
		\appoggiatura c8 b16 a b8 \appoggiatura c b16 a b8 |
		\appoggiatura c8 b16 a b8 \appoggiatura c b16 a b8 |
		\appoggiatura c8 b16 a b8 \appoggiatura c b16 a b8 |
		es8 d16 c b8 as |
		g f16 es f8 d |
		es8. c'16 b as g f |
		es8. es'16 d c b as |
		g8. g'16 f es d c |
		b4. c16 d |
		es8 es, r g |
		as16 f b,8~ b16 c' b as |
		g es g,8~ g 16 b' es g, |
		as f b,8~ b16 c' b as |
		g8 es g b |
		es d16 c b as g f |
		g8 es f d |
		es4\fermata r |
		d'8. es16 d c b a |
		g8. d'16 c b a g |
		fis g a b c8 a |
		b8. g'16 f es d c |
		b8. es16 d c b a |
		g8. g'16 f es d c |
		b8. b'16 a g fis e |
		d8. c16 b a g f |
		es4 c |
		g'4. g8 |
		es' \appoggiatura d c \appoggiatura b a g |
		g fis d' d, |
		es8. d'16 c b a g |
		fis8. es'16 d c b a |
		b8 a16 g a8 fis |
		g b, c d |
		g,2 \fermata |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key es \major
	\clef alto
	\relative c' {
		r8 g  g g |
		r g g g |
		r g g g |
		r g g g |
		r g g g |
		d' d d d |
		r es es es |
		r d d d |
		r b b b |
		R2 |
		b'8 a16 g f es d c |
		b8 b16 c d8 b |
		r b b c |
		r c c d |
		r d d g |
		r c, c c |
		r d d d |
		r c c f |
		f b b a |
		b b b a |
		b4 r |
		r8 g, g g |
		r g g g |
		r b b b |
		r b b b |
		r b b b |
		r d d d |
		r g, g g |
		r d' d d |
		r g, g g |
		f'4 f |
		f8 f a a |
		f f a a |
		f4 f |
		b,8 d16 c d8 d |
		b4 d8 f |
		b8 d16 es f8 f, |
		b, g g g |
		r a a a |
		r b b b |
		r c c a |
		b' a16 g f es d c |
		b8 b' es, f |
		b, d16 c d8 d |
		r d16 c d8 d |
		r d16 c d8 d |
		r d16 c d8 d |
		r d16 c d8 d |
		r a16 g a8 a |
		f f' f f |
		d d16 c d8 d |
		r g, g g |
		r g g g |
		r b b b |
		r g g g |
		r es' es es |
		r a, a a |
		r a a a |
		r c c c |
		r a a a |
		r f' b, g |
		r d' d d |
		r g, g g |
		r d' d d |
		r b g' g |
		r es es c |
		r f f f |
		b, c f d |
		b b c b |
		b g g g |
		r d' d d |
		r es es es |
		r f f f |
		r g g g |
		es' d c b |
		as g f es |
		b' b,16 as b8 b |
		b' b as as |
		g g f f |
		es es d d |
		c c d d |
		es g, as b |
		b g g g |
		r g g g |
		r b b b |
		r g g g |
		r g g g |
		r d' d d |
		r es es es |
		r d d d |
		b4 g'8 b |
		es8 d16 c b as g f |
		es8 g, as b |
		es,4\fermata r |
		r8 b' b b |
		r b b b |
		r a fis' fis |
		r d d d |
		r d d d |
		r d d d |
		r d d d |
		r b b b |
		r g g g |
		r d' d b |
		r g a a |
		r a g g |
		r g g es |
		r fis' fis fis |
		d b c d |
		g, b c d |
		g,2\fermata |
	\bar "|."
	}

}
staffTenor = \new Staff  {
	\set Staff.instrumentName="Clisthene"
	\set Staff.midiInstrument="oboe"
	\key es \major
	\clef "G_8"
	\relative c' {
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
		R2*21 |
		b4 g |
		es2 |
		g |
		b4. c16[ d] |
		es8 es, r g |
		as16[ f] b8~[ b16 as g f] |
		g16[\melisma es] es'4 g,8 |
		as16[ f] b8~[ b16 as g f] |
		g[ f]\melismaEnd es8 r4 |
		b'4 b |
		b8 a16 b c[ b] c[ a] |
		b8[\melisma a16 b c b c a] |
		b8\melismaEnd a16 g f8 es |
		es d r4 |
		b d8[ f] |
		b d16[ es] f8 f, |
		g[\melisma es16 f g a b8] |
		a[ f16 g a b c8] |
		b[ g16 a b c d8] |
		c8[ a16 b c d es8] |
		d\melismaEnd c16[ b] a[ g] f[ es] |
		d8 b' c b16[ a] |
		b4 r |
		R2*7 |
		b4 g |
		es2 |
		g |
		b4. c16[ des] |
		c[ b] as8 r4 |
		c a |
		f2 |
		a |
		c4. d16[ es] |
		d[ c] b8 r g |
		as16[ f] b4\melisma f8\melismaEnd |
		g16[\melisma es] es'4 g,8 |
		as16[ f] b4 f8 |
		g16[ f]\melismaEnd es8 b' b |
		c16[ b] as[ b] c8 c |
		d16[ c] b[ c] d8 d |
		es d16[ c] b[ as] g[ f] |
		g8 f16[ es] f8 d |
		es4 r8 g |
		f[\melisma d16 es f g as8] |
		g[ es16 f g as b8] |
		as[ f16 g as b c8] |
		b[ g16 as b c d8] |
		es[ d c b] |
		as[ g f es]\melismaEnd |
		b'4 r |
		\appoggiatura c8 b16[ a b8] \appoggiatura c b16[ a b8] |
		\appoggiatura c8 b16[ a b8] \appoggiatura c b16[ a b8] |
		\appoggiatura c8 b16[ a b8] \appoggiatura c b16[ a b8] |
		es8[ d16 c b8] as |
		g[ f16 es f8] d |
		es4 r |
		R2*11 |
		d'4 b |
		g r8 g |
		fis16[ g a b c8] a |
		b16[ a] g8 r4 |
		d' b |
		g2 |
		b |
		d4 d, |
		es c |
		g'4. g8 |
		es'8 \appoggiatura d c \appoggiatura b a g |
		g fis d' d, |
		es8.[\melisma d'16 c b a g] |
		fis8.[ es'16 d c b a] |
		b8\melismaEnd a16 g a8 fis |
		g b, c d |
		g,2\fermata |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key es \major
	\clef bass
	\relative c {
		r8 es16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r b''16 as b8 b, |
		r b'16 as b8 b, |
		r b'16 as b8 b, |
		r es16 d es8 es, |
		R2 |
		b''8 a16 g f es d c |
		b8 b16 c d8 b |
		r es16 d es8 e |
		r f16 es f8 fis |
		r g16 f g8 es |
		r f16 es f8 f, |
		r f'16 es f8 f, |
		r f'16 es f8 f, |
		b16 c d es f8 f, |
		b16 c d es f8 f, |
		b4 r |
		es,8 es'16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r b'16 as b8 b |
		r b16 as b8 b |
		r b16 as b8 b |
		r es16 d es8 es |
		r b16 a b8 b |
		b b f' f, |
		b b f' f, |
		b4 b4 |
		b8 b16 a b8 b |
		b4 d8 f |
		\clef tenor b d16 es f8 f, |
		\clef bass es es es es ,|
		r f' f f, |
		r g' g g, |
		r a' a f |
		b a16 g f es d c |
		b8 b' es, f |
		b, b16 a b8 b |
		r b16 a b8 b |
		r b16 a b8 b |
		r b16 a b8 b |
		r b16 a b8 b |
		r f'16 es f8 f |
		b, b f' f, |
		b b16 a b8 b |
		r es16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r as'16 g as8 as, |
		r f'16 es f8 f, |
		r f'16 es f8 f, |
		r f'16 es f8 f, |
		r f'16 es f8 f, |
		r b'16 as g8 es |
		r b16 as b8 b |
		r b16 as b8 b |
		r b16 as b8 b |
		r es16 d es8 es, |
		r as'16 g as8 as, |
		r b'16 c b8 as |
		g as d, b |
		es g, as b |
		es, es'16 d es8 es, |
		r b' b b |
		r b b b |
		r b b b |
		r b b b |
		es' d c b |
		as g f es |
		b' b,16 as b8 b |
		b' b as as |
		g g f f |
		es es d d |
		c c d d |
		es g, as b |
		es, es'16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r es'16 d es8 es, |
		r b'16 as b8 b |
		r b16 as b8 b |
		r b16 as b8 b |
		es es g b |
		es d16 c b as g f |
		es8 g, as b |
		es,4\fermata r |
		r8 g'16 fis g8 g, |
		r g'16 fis g8 g, |
		r fis'16 e d8 d, |
		r g'16 fis g8 g, |
		r g'16 fis g8 g, |
		r g'16 fis g8 g, |
		r g'16 fis g8 g, |
		r g'16 fis g8 g, |
		r c16 b c8 c, |
		r b''16 a b8 g |
		r c16 b c8 c, |
		r8 d16 c b8 g |
		r c16 b c8 c, |
		r d'16 c d8 d, |
		g b c d |
		g, b c d |
		g,2\fermata |
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
	}
}

\paper {
}

