% Created on Sun Jan 27 21:02:38 CET 2008
\version "2.10.33"

\header {
	title = "Corri, vola, a' tuoi trofei"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Corri, vola, a' tuoi trofei , Aria from Giustino"
	mutopiacomposer = "HandelGF"
	mutopiaopus = "HWV 37"
	mutopiainstrument = "Voice (Soprano), Oboes, String Ensemble, Basso Continuo"
	date = "1736/37"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 88, 1883"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1309"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
Cor -- ri, vo -- la,a' tuoi tro -- fe -- i pre -- stan plau -- si uo -- mi -- ni_e De -- i: và pur lie -- to in -- vit -- to cor, và pur lie -- to in -- vit -- to cor! cor -- ri, vo -- la, cor -- ri, vo -- la! cor -- ri, vo -- la,_a' tuoi tro -- fe -- i pre -- stan plau -- si uo -- mi -- ni_e De -- i, và pur lie -- to_in -- vit -- to cor, in -- vit -- to cor, và pur lie -- to, cor -- ri, vo -- la, và pur lie -- to_in -- vit -- to cor, và pur lie -- to in -- vit -- to cor, cor -- ri, vo -- la_in -- vit -- to cor!

}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120
	\set Staff.instrumentName=\markup{\column{"Oboe I" \line{"Violino I"}}}
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		R1*6 |
		b8^\markup {Violino I (s. Ob.)} b b c16 b a8 c a f |
		d'4. es16 d c4 f~ |
		f8 b,^\markup {Tutti} g'4~ g f~ |
		f es~ es d~ |
		d8 es16 d c8 b a f' d b' |
		a g16 f g8 b, a4 r |
		b'8 b b c16 b a8 c a f |
		d16 b d f d f es d c8 a f4 |
		g'16 b, g' b g b a g f8 b, b' f |
		g16 b, g' b g b a g f8 b, b'4 |
		es,16 b es g es g f es d b d f b8 f |
		g a16 b c,8 a' b c, d es |
		f a, b c d f, g a |
		b d, es f b,4 r |
		R1*10 |
		d'16^\markup {Viol. s. Ob.} b d f d f es d c4 r |
		d16 b d f d f es d c4 r |
		f b, b, r |
		c' r c r |
		d r d r |
		f, r f' r |
		R1 |
		g16 b, g' b g b a g f4 r |
		es r f16 b a b f b a b |
		b,4 r f16 b a b f b a b |
		g4 es'8 d c4 b |
		r2 r8 d f d |
		r2 r8 f a f |
		r2 r8 c a c |
		d16 b d f d f es d c4 r |
		d16 b d f d f es d c4 r |
		c r r8 a b c |
		d4 r d, r |
		g4 r r8 es' d4 |
		R1*3 |
		b'8^\markup {Tutti} b b c16 b a8 c a f |
		d16 b d f d f es d c8 a f'4 |
		a16 f a c a f g a b8 c, d es |
		c4. b8 b c d es |
		f a, b c d f, g a |
		b d, es f b,4 r |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName=\markup{\column{"Oboe II" \line{"Violino II"}}}
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		R1*7 |
		b8^\markup {Violino I (s. Ob.)} b b c16 b a8 c a f |
		d'4.^\markup {Tutti} es16 d c4. b16 a |
		b8 b b c16 b a8 c f, b |
		g4 r8 g' c,4 f,~ |
		f e f8 c' f es |
		d16 b d f d f es d c8 f, f'4 |
		f,8 f f'4 f,8 f f'4~ |
		f8 b, es c d16 b d f b, f' es d |
		es8 b es c d16 b d f b, f' es d |
		es8 b b c f,4 d'8 b |
		b4 a8 c d c d es |
		f a, b c d f, g a |
		b d, es f b,4 r |
		R1*10 |
		r2 c'16^\markup {Viol. s. Ob.} f, c' es c es d c |
		b4 c c16 f, c es' c es d c |
		d4 f, g r |
		g r a r |
		a r b r |
		a r d r |
		R1 |
		b4 r8 c d16 b d f b, f' es d |
		g b, es g es8 c d4 r |
		es16 b es g g, b a g f4 r |
		r8 d' c g a4 b |
		r2 r8 b d b |
		r2 r8 c f c |
		r2 r8 a f a |
		b4 r c16 f, c' es c es d c |
		b4 r c16 f e f c f e f |
		a,4 r f r |
		r8 f g a b4 r |
		r8 b c d g, c b4 |
		R1*4 |
		b8 b b c16 b a8 c a f |
		c' c c c b a b4 |
		b a b8 c d es |
		f a, b c d f, g a |
		b d, es f b,4 r |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key b \major
	\clef alto
	\relative c'' {
		R1*7 |
		b8 b b c16 b a8 c a f |
		b, b b c16 b a8 c a f |
		b' b b c16 b a8 c f, b |
		es,4 r8 c c4 d8 f |
		a b16 a b8 g f4 r |
		R1 |
		b8 b b c16 b a8 c a f |
		es8 es es f16 es b'8 f f b |
		b4 b8 f b4 f |
		b,8 g' g c, d4 g8 f |
		c4 c8 f f c d es |
		f a, b c d f g a |
		b d, es f b,4 r |
		R1*12 |
		b'4 b, es r |
		es r f r |
		f r g r |
		c, r b' r |
		R1 |
		es,4 r b' r |
		b r b r |
		b r b, r |
		b r8 b' f4 f |
		r2 r8 f b b, |
		r2 r8 b' d b |
		r2 r8 f f f, |
		f'4 r f r |
		f r f r |
		f r d r |d
		r r8 d es f |
		b,4 r es8 f f4 |
		R1*4 |
		b8 b b c16 b a8 c a f |
		a a a a f f f f |
		f4 c d8 c d es |
		f a, b c d f g  a|
		b d, es f b,4 r |
	\bar "|."
	}

}
staffSoprano = \new Staff  {
	\set Staff.instrumentName="Fortuna"
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*20 |
			b16[ c b a b8] f c'16[d c b c8] f, |
			d'4. es8 c4 f |
			d8[b] es4 es d |
			c d8 es d[ c] b4 |
			g'4. f8 e[ d] c b |
			a4. b8 g2 |
			c4. b8 a[\melisma c d e] |
			f4. e8 d[ c b a] |
			b[ d g f] es16[ d c8]\melismaEnd f d |
			e4. f8 f2 |
			r f4 f, |
			r2 f'4 f, |
			\times 2/3 {d'8[ c b]} \times 2/3 {b[ a g]} \times 2/3 {g[\melisma b a]} \times 2/3 {b[ a g]} |
			\times 2/3 {es'[ d c]} \times 2/3 {c[ b a]} \times 2/3 {a[ c b]} \times 2/3 {c[ b a]} |
			\times 2/3 {f'[ es d]} \times 2/3 {d[ c b]} \times 2/3 {b[ d c]} \times 2/3 {d[ c b]} |
			\times 2/3 {c[ es d]} \times 2/3 {es[ d c]} d8[ c]\melismaEnd b4 |
			g'4. a16[ g] f4 b, |
			es4. f16[ es] d8.[ c16] b4 |
			g'4. a16[ g] f4 b, |
			es es8 es es4 d |
			c4 c8[ b] \times 2/3 {a[\melisma g f]} f'8.\melismaEnd es16 |
			d4\melisma c8.\melismaEnd b16 b4 r8 d |
			\times 2/3 {c[ d es]} \times 2/3 {d[ c b]} c4 r |
			\times 2/3 {d8[ c b]} \times 2/3 {e[ d c]} f4 f, |
			r2 f'4 f, |
			r2 f'4 f, |
			c'4. c8 f4. es8 |
			d4. c8 b2 |
			g'4. f8 es16[ d c8] d es |
			a,4. b8 b2 |
			c4 d8[ es] d4^\markup {ad libit.} c8[ b] |
			c4. b8 b2 |
			R1*6 |
		}

	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Bassi"
	\set Staff.midiInstrument="harpsichord"
	\key b \major
	\clef bass
	\relative c' {
		b8_\markup {Cembalo e Violoncello solo} b b c16 b a8 c a f |
		b b b c16 b a8 c a f |
		b b b c16 b a8 c a f |
		b d, es f b, \clef tenor c' d es |
		f a, b c d \clef bass f, g a |
		b d, es f b,4 r |
		R1*2 |
		b'8_\markup {Tutti} b b c16 b a8 c a f |
		g g g a16 g f8 a b d, |
		es4 r8 e f a b d |
		c4 c, f r |
		R1 |
		b8 b b c16 b a8 c a f |
		\clef tenor es' es es f16 es d8 f d b |
		es8 es es f16 es d8 f d b |
		\clef bass g g g a b f g d |
		es c f f, b \clef tenor c' d es |
		f a,b c d \clef bass f, g a |
		b d, es f b,4 r |
		R1 |
		b'8_\markup {Cembalo e Violoncello solo} b b c16 b a8 c a f |
		b b b c16 b a8 f b d, |
		es c f f, b f' g a |
		b g a b c,4 r |
		f8 f f g16 f e8 g e c |
		\clef tenor r c' d e f a, b c |
		d f, g a b \clef bass d, e f |
		g,4 r8 b' c,4 a'8 b |
		c4 c, f8 g a f |
		b8_\markup {con Contrabasso ma p} b b c16 b a8 c a f |
		b b b c16 b a8 c a f |
		b4 d, es r |
		c r f r |
		d r g r |
		a r b r |
		\clef tenor es8 es es f16 es d8 f d b |
		g g g a b b d b |
		es es es f16 es d8 f d b |
		g g g a b \clef bass b, c d |
		es4 \clef tenor es'~ es d8 es |
		f4 f, b r8 b |
		a4 b f r |
		b g f r |
		b8 b b c16 b a8 c a f |
		b b b c16 b a8 c a f |
		f' a, b c d f, g a |
		b d, es f g \clef bass b, c d |
		es8 g, a b c a' b es, |
		f es f f, g2 |
		a4 r b g' |
		f2 b, |
		R1*2 |
		\clef tenor f''8 f f f16 es d8 f d b |
		f'4 f, b8 c d es |
		f a, b c d \clef bass f, g a |
		b d, es f b,4 r |
	\bar "|."
	}

}


\score {
	<<
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
	}
}

\paper {
}

