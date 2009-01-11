% Created on Mon Dec 31 11:08:02 CET 2007
\version "2.10.33"

\header {
	title = "Grecia tu offendi"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Grecia tu offendi , Aria from Deidamia"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Paolo Antonio Rolli (1687-1765)"
	mutopiaopus = "HWV 42"
	mutopiainstrument = "Voice (Alto), String Ensemble, Basso Continuo"
	date = "1740"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 94, 1885"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/01/04-1206"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Gre -- cia tu of -- fen -- di, Tro -- ia di -- fen -- di, se_A -- chil -- le vuoi sal -- var, of -- fen -- di Gre -- cia, di -- fen -- di Tro -- ia, se_A -- chil -- le vuoi sal -- var, se_A -- chil -- le vuoi sal -- var. Quel -- che di Gio -- ve dal ci -- glio mo -- ve sai che non può man -- car, non può man -- car, sai che non può man -- car. Gre -- cia tu of -- fen -- di, Tro -- ia di -- fen -- di, se A -- chil -- le vuoi sal -- var, col -- po di Fa -- to quand' al -- tri_ha spe -- ne, che sia scam -- pu -- to al -- lor lo vie -- ne_ad in -- con -- trar, al -- lor, al -- lor lo vie -- ne ad in -- con -- trar, ad in -- con -- trar, col -- po del Fa -- to quand' al -- tri_ha spe -- ne, che sia scam -- pu -- to al -- lor, al -- lor lo vie -- ne ad in -- con -- trar, al -- lor, al -- lor lo vie -- ne ad in -- con -- trar.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 90
	\set Staff.instrumentName="Violini"
	\set Staff.midiInstrument="violin"
	\key es \major
	\clef treble
	\relative c'' {
		es4 g,8.\trill f32 es b'8 b, r4 |
		f''8.\trill g32 as d,8.\trill c32 b es8 es, r4 |
		g,4 as8. b16 c8 es' es es |
		c,4 d8.\trill es16 f8 as' as as |
		b, g' g g as, f' f f |
		g, es' f, es' d16 c b8 r d, |
		es16 b' g b es, b' g b es, c' as c es, c' as c |
		f, c' a c f, c' a c f, d' b d f, d' b d |
		g, d' h d g, d' h d g, es' c es g, es' c es |
		b f' d f b, f' d f g f es d c b as g |
		as' g f es d c b as b' as g f es d c b |
		c d es g, f8 d' es es, r4 |
		R1 |
		es'4 g,8.\trill f32 es b'8 b, r4 |
		R1 |
		f''8. g32 as d,8. c32 b es8 es, r4 |
		R1*4 |
		b'4 g8.\trill f32 es b'8 b, r4 |
		R1 |
		f''4 d8.\trill c32 b f'8 f, r4 |
		R1*5 |
		d'16 b' f b d, b' f b d, b' f b d, b' f b |
		es, b' g b es, b' g b d, b' f b d, b' f b |
		c, b' es, b' c, b' es, b' c, a' es a c, a' es a |
		b c, d b f8 a' b b, r4 |
		g,4 as8. b16 c8 es' es es |
		es es es es es es es es |
		d d d d d d d d |
		c c c c f es d c |
		h4 r8 d g, c c4 |
		r8 c c4 r8 c c4 |
		r8 c c4~c h8.\trill f16 |
		es c' g c es, c' g c d, c' f, c' d, c' f, c' |
		c, g' es g c, g' es g f d' h d f, d' h d |
		es c d es g,8 h c c, r4 |
		R1 |
		es'4 g,8.\trill f32 es b'8 b, r4 |
		R1 |
		f''8.\trill g32 as d,8.\trill c32 b es8 es, r4 |
		R1*2 |
		es16 b' g b es, b' g b es, b' g b es, b' g b |
		es, b' g b es, b' g b c es as, es' g, es' es, es' |
		d, f b, f' b, es c f d b' es, b' f b d, b' |
		b,4 d es as |
		f es b' f |
		b,4 r r2 |
		R1*3 |
		g8 es' as, es' b d c es |
		g,8 es' as, es' b d c es |
		g, es' g, es' as, es' as, es' |
		a, f' a, f' b, f' b, f' |
		h, g' h, g' c, g' as c, |
		d b' d, b' es, b' g es |
		c es c as b4 r |
		R1 |
		r4 r8 es8 es16 c' es, c' f, d' f, d' |
		g, es' g, es' g, es' g, es' c f c f d f d f |
		es g b, es g, b es, g b,4 r |
		R1 |
		r2 r4 r32 es f g as b c d |
		es4 g,8.\trill f32 es b'8 b, r4 |
		f''8. g32 as d,8.\trill c32 b es8 es, r b |
		es16 b' g b es, b' g b es, c' as c es, c' as c |
		f, c' a c f, c' a c f, d' b d f, d' b d |
		b' as g f es d c b as'8 f g es |
		f,4 d es\fermata r |
	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Ulisse"
	\set Staff.midiInstrument="oboe"
	\key es \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*12 |
			es8 g b8. b16 c8 b r4 |
			R1 |
			b4 c8. d16 es8 es, r4 |
			r2 r4 r8 b' |
			es es es es d[\melisma g16 f] g[ es f d] |
			c8[ f16 es] f[ d es c] b8[ es16 d] es[ b c g] |
			as8[ f'16 es] d[ c b as] g4\melismaEnd r |
			r8 g' f es f4 b, |
			R1 |
			r8 f' d c16[ b] f'4 f, |
			r2 r4 r8 f |
			g a b c f,[\melisma g16 a] b8[ c16 d] |
			es8[ es~] es16[ d es c] d8[ g16 f] g[ d c b] |
			c8[ f16 e] f[ c b a] b[ g' f e] f[ b, a g] |
			a[ c a f] b[ d b f] es'[ d c b] a[ g f es] |
			d8\melismaEnd g' f es d4\melisma c8.\melismaEnd b16 |
			b2 r |
			R1*4 |
			es,4 f8. g16 as8.[ g16] as4~ |
			as8 as g8. f16 g[ f] g8 r g |
			c b as g f2~ |
			f8[ d'16 c]\melisma h[ a g f] es4\melismaEnd r8 c' |
			c4. c8 c4. as8 |
			g4 f' es\melisma d8.\melismaEnd c16 |
			c2 r |
			R1*2 |
			es,8 g b8. b16 es8 b r4 |
			R1 |
			f'4 d8 c16[ b] es8 es, r4 |
			r2 r4 r8 es'16 d |
			c8 b as g f4.\melisma f'16[ es] |
			d[ es c d] b[ c as b] g4\melismaEnd r |
			es' es,8. es'16 es4 es, |
			r8 des' es des c4 b |
			r8 as g as f4 f8 f |
			g[ f16 es] as8[ g16 f] b4 c |
			d es f16[\melisma es d c] b[ as g f] |
			g4\melismaEnd r8 b es4\fermata r |
			r8 b es g es[ d16 c] b8 as |
			g[ as16 g f8] d' es[ d16 c b8] as |
			g4\melisma f8.\melismaEnd es16 es4 r |
			b' c16[ b] as[ g] f4 es |
			r8 b' c es f,4 es |
			r8 b' es, b' c16[\melisma b c b] as[ g as g] |
			f4\trill r16 c'[ b c] d[ c d c] b[ as b as] |
			g4\trill r16 d'[ c d] es[ d es d] c[ es d es] |
			f[ es f es] d[ f es f] g[f g f] es[ d c b] |
			es[ d c b] as[ g f es] es8\melismaEnd d r4 |
			r r8 b' es4 r |
			r4 r8 b c4 d |
			es8 es, r b' c4 d |
			es r8 b es4 r |
			r8 b es g es[ d16 c] b8 as |
			g4\melisma f8.\melismaEnd es16 es2 |
			R1*6 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key es \major
	\clef bass
	\relative c' { 	
		es4  g,8.\trill f32 es b'8 b, r4 |
		f''4 d8.\trill c32 b es8 es, r4 |
		g,4 as8. b16 c8 c' r4 |
		c,4 d8.\trill es16 f8 \clef tenor f' r es |
		d es r d c d r c |
		b c as f b d f \clef bass b,, |
		g es' g, es' as, c as c |
		a f' a, f' b, d b d |
		h g' h, g' c, es c es |
		d b' d, b' es, g es g |
		f as f as g b g es |
		as g16 as b8 b, es,4 r |
		R1 |
		es''4 g,8.\trill f32 es b'8 b, r4 |
		R1 |
		f''4 d8. c32 b es8 es, r4 |
		r r8 es b' b b b |
		as as as as g g g es |
		f, b b d es b' c d |
		es4 r r2 |
		b4 g8.\trill f32 es b'8 b, r4 |
		R1 |
		f''4 d8. c32 b f'8 f, r4 |
		r r8 es' es d d f, |
		g f g a b b, b b' |
		a a, a a' g g, g g' |
		f es d d' c es, f a |
		b es, d g f4 f, |
		b'8 d b d b d b d |
		g, es' g, es' f, d' f, d' |
		es, c' es, c' f, c' f, c' |
		d, es f f, b4 r |
		g as8. b16 c8 c, r4 |
		c' d8. es16 f8 f, r4 |
		b c8. d16 es4 f8. g16 |
		as8 g f es d c h a |
		g4 r8 h c4 r8 es |
		f4 r8 g as4 r8 f |
		es c as' f g f g g, |
		c es c es f as f as |
		es g es g d g d g |
		c, f g g, c4 r |
		R1 |
		es'4 g,8.\trill f32 es b'8 b, r4 |
		R1 |
		f'4 d8.\trill c32 b es'8 es, r4 |
		r r8 es' d es d c |
		b as g f es4 r |
		g,8 es' g, es' g, es' g, es' |
		g, es' g, es' as, c es g |
		f d es as, b c d b |
		es4 f g as |
		b, c d8 f b, d |
		es4 r r2 |
		r4 r8 es g f g as |
		b as b b, c es g, as |
		b4 r8 b' g es g b |
		g, es' as, es' b d c es |
		g, es' as, es' b d c es |
		g,4 r r2 |
		R1*4 |
		r4 r8 b' g4 r |
		r r8 g es as f b |
		g es r es as, as' f b |
		g4 r8 b, g4 r |
		r4 r8 es' g,4. as8 |
		b2 es,4 r32 es' f g as b c d |
		es4 g,8.\trill f32 es b'8 b, r4 |
		f''4 d8. c32 b es8 es, r b |
		g es' g, es' as, c as c |
		a f' a, f' b, d b d |
		g, es' g, es' f, d' es g |
		as f b b, es,4\fermata r |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffSoprano
		\context Lyrics = "lmelodySop" \lyricmode  { \lyricsto "melodySop" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

