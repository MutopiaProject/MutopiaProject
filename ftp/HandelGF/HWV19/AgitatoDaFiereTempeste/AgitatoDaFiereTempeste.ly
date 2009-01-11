% Created on Thu Jan 24 23:18:37 CET 2008
\version "2.10.33"

\header {
	title = "Agitato da fiere tempeste"
	composer = "G. F. Händel (1685-1758)"
	mutopiatitle = "Agitato da fiere tempeste , Aria from Riccardo primo"
	mutopiacomposer = "HandelGF"
	mutopiapoet = "Paolo Antonio Rolli (1687-1765)"
	mutopiaopus = "HWV 19"
	mutopiainstrument = "Voice (Alto), Oboes, String Ensemble, Basso Continuo"
	date = "1727"
	source = "G. F. Händels Werke, für die Deutsche Händegesellschaft herausgegeben von Friedrich Chrysander, Bd.: 74, 1877"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2008/02/19-1306"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

verse= \lyricmode {
A -- gi -- ta -- to da fie -- re tem -- pe -- ste, se_il noc -- chie -- ro ri -- ve -- de sua stel -- la tut -- to lie -- to_e si -- cu -- ro sen và, si -- cu -- ro e lie -- to, tut -- to lie -- to_e si -- cu -- ro sen và, si -- cu -- ro sen và; a -- gi -- ta -- -- to da fie -- re tem -- pe -- ste, da fie -- re tem -- pe -- ste se_il noc -- chie -- ro ri -- ve -- de sua stel -- la tut -- to lie -- to_e si -- cu -- ro sen và, si -- cu -- ro e lie -- to, tut -- to lie -- to_e si -- cu -- ro sen và, tut -- to lie -- to_e si -- cu -- ro sen và.
Più non te -- me pro -- cel -- le fu -- ne -- ste, pro -- cel -- le fu -- ne -- ste, se mo -- stra -- to gli vie -- ne da quel -- le il ca -- mi -- no, che sal -- vo lo fà, se mo -- stra -- to gli vien da quel -- le il ca -- mi -- no, il ca -- mi -- no, che sal -- vo lo fà.
}
 

staffViolin = \new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 110
	\set Staff.instrumentName=\markup{\column{"Oboe I, II" \line {"Violino I"}}}
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c''' {
		b4 f b16 a g f b a g f |
		b8 a16 g f es d c <<{b4^\markup {Viol. (s. Ob.)} r}\\{b16 a g f b a g f}>> |
		b8 a16 g f es d c d b d d f16 d f^\markup {Tutti} f |
		b16 f b b d b d d f f, a c a c a a |
		c a c c f c f a b g, b d b g b d |
		e b e e g e g b a f, a a c a c c |
		f f, f f' es es, es es' d b c d es f g as |
		b b, b b' as as, as as' g g, g g' f f, f f' |
		es es, es es' d d, d d' c8 f, r b |
		g16 a b c f,8 b r4 r8 b' |
		g16 a b c f, g a b es, d c b a c f, es' |
		d b c d f,8 a' b b, <<{r4}\\{b,}>> \mark \markup { \musicglyph #"scripts.segno" } |
		R1 |
		b'4^\markup {Tutti} f' b r |
		a, r f' r8 b, |
		f4 r r r8 g' |
		f es16 d es8 c <<{d b}\\{d16 b, d d}>> f16^\markup {Viol. s. Ob.} d f f |
		b f b b d b d d f c f f a f a a |
		b b, d d e, c e e f e f g a8 g |
		f16 e f g a8 g f16 e f g a8 g |
		f c r4 r16 c e e g e g g |
		c a c c f c f f d b d d g d g g |
		e c e e a e a a f8 b, b b |
		c c c c c16 a c c f8 c |
		r4 r8 f d16 e f g c,8 f |
		r4 r8 f d16 e f g c,8 f |
		b, r c r e r f r |
		c g a b c d e, e' |
		f16 e d c f e d c f4 r |
		f16 e d c f e d c b a g f e8 c |
		r2 r16 f^\markup {Tutti} g a b c d es |
		f f, f f' es es, es es' d b c d es f g a |
		b4 r b,^\markup {Viol.} r |
		b a r16 d, f f b f b b |
		es c es es a es a a b f, b b d b d d |
		g es g g c c, es es a, f a a c a c c |
		d b d d f d f f g g, b b es a, c c |
		f, d f f b g b b g es g g es' c es es |
		f,4 r8 a b16 a b c d8 c |
		b16 a b c d8 c b r a r |
		b r c r r16 c f f f4 |
		r4 r8 b g16 a b c f,8 b |
		r4 r8 b g16 a b c f,8 b |
		b, r a r g r f r |
		b r es r f,4 r |
		r2 r16 f b b d b d f |
		b b, b b' as as, as as' g g, g' f es d c b |
		a f a a c a c c f f, f' es d c b a |
		g4 r f r |
		R1 |
		b'4^\markup {Tutti} f b16 a g f b a g f |
		b8 a16 g f es d c d f, g a b c d es |
		f f, f f' es es, es es' d b c d es f g as |
		b b, b b' as as, as as' g g, g g' f f, f f' |
		es es, es es' d d, d d' c8 f, r b |
		g16 a b c f,8 b r4 r8 b' |
		g16 a b c f, g a b es, d c b a c f, es' |
		d b c d f,8 a b\fermata b, r4 \bar "||" |
		r2 r4 r8 a' |
		b a16 b c8 a b a16 b c8 a |
		b a16 b c8 a b16 d, g g b g b b |
		d b d d g d g g e4 r8 g, |
		a16 f a a c a c c d8 d, r4 |
		g'8 f b a g f b a |
		g f es d cis e g b, |
		a4 r r2 |
		r r16 a cis cis e cis e e |
		a8 a, r4 r16 g b b d b d d |
		g8 g, r4 r16 f a a c a c c |
		f8 f, r4 d8 c b a |
		b' a g f e4 r |
		R1 |
		b''4^\markup {Tutti} f b16 a g f b a g f |
		b a g f es d c b a8 f r8 b |
		g16 a b c f,8 b r4 r8 b' |
		g16 a b c f, g a b es, d c b a c f, es' |
		d b c d f,8 a' b b, <<{r4}\\{b,}>> \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.S." } |
	\bar "|."
	}

}
staffViolinII = \new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key b \major
	\clef treble
	\relative c'' {
		d4 c b f |
		c' a b16 a g f b a g f |
		b8 a16 g f es d c d b d d f d b b |
		d b d d f d f f a f a c a8 f16 f |
		a f a a c a c f g g, b d b d, g b |
		g e b' b b g e' g f8 f,16 f a f a a |
		b d, d d' c c, c c' b8. b16 c d es f |
		g g, g g' f f, f f' es es, es es' d d, d d' |
		c c, c c' b b, b b' a c, c f b,8 d |
		r4 r8 b' g16 a b c f,8 d' |
		b16 c d es f8 d g,16 f es d c8 c' |
		f, g f es' d b b,4 |
		R1 |
		d4 c' f, r |
		es r b' r8 g |
		a,4 r r r8 es'' |
		d c16 b c8 a b b,16 b d b d d |
		f d f f b f b b c a c c f c f f |
		g g, b b c e, g g a g a b c8 b |
		a16 g a b c8 b a16 g a b c8 b |
		a f r4 r16 g, c c e c e e |
		f c f f a f a a f d f f b g b b |
		g e g g c a c c a8 f f f |
		e g g g a16 f a a c4 |
		r4 r8 f d16 e f g c,8 f |
		r4 r8 f d16 e f g c,8 f |
		e, r a r c r c, r |
		e e f e f b g e' |
		f16 e d c f e d c f4 r |
		f16 e d c f e d c b a g f e8 c |
		r2 r4 r16 a' b c |
		d d, d d' c c, c c' b d, es f g a b c |
		d4 r d, r |
		c f r16 b, d d f d f f |
		c' g c c es c c a f d f f b f b b |
		es b es es g es g g c, a c c f f, a a |
		b f b b f' b, d d es es, g g a c, es es |
		d b d d g d g g es c c' c c f, c' c |
		a4 r8 a b16 a b c d8 c |
		b16 a b c d8 c b r es, r |
		d r g r r16 f a a b4 |
		r r8 b' g16 a b c f,8 b |
		r4 r8 b g16 a b c f,8 b |
		g, r f r es r c r |
		f r a r b4 r |
		r2 r16 d, f f b f b d |
		g g, g g' f f, f f' es es, es' f es d c b |
		a c, f f a f a a d d, d' c b a g f |
		g4 r c, r |
		R1 |
		d'4 c b f |
		g a f16 d es f g a b c |
		d d, d d' c c, c c' b8. b16 c d es f |
		g g, g g' f f, f f' es es, es es' d d, d d' |
		c c, c c' b b, b b' a c, c f b,8 d |
		r4 r8 b' g16 a b c f,8 d' |
		b16 c d es f8 d g,16 f es d c8 c' |
		f, g f es d4\fermata r \bar "||" |
		r2 r4 r8 g |
		g fis16 g a8 fis g fis16 g a8 fis |
		g fis16 g a8 fis g d g16 d g g |
		b g b b d b d d c4 r8 c, |
		f16 c f f a f a a d,4 r |
		g'8 f b a g f b a |
		g f es d cis e g b, |
		a4 r r2 |
		r r16 e a a cis a cis cis |
		d8 fis, r4 r16 d g g b g b b |
		c8 e, r4 r16 c f f a f a a |
		d8 d, r4 d8 c b a |
		b' a g f e4 r |
		R1 |
		d'4 c b f |
		g8 a b g c16 b a g f8 d' |
		r4 r8 d g,16 a b c f,8 d' |
		b16 c d es f8 d g,16 f es d c8 c' |
		f, g f es d b' b,4 |
	\bar "|."
	}

}
staffViola = \new Staff  {
	\set Staff.instrumentName="Viola"
	\set Staff.midiInstrument="viola"
	\key b \major
	\clef alto
	\relative c' {
		f4 a d, b' |
		g c d, f |
		c a b16 f b b d b d d |
		f d f f b f b b c8 f,16 f f c c c |
		f c f f a f a c d8 g,16 g g8 d16 g |
		b g g g e c' c e, c'8 c,16 c f c f f |
		f8 d a' c, f4 r8 d |
		es es c' d, b'4 r8 b |
		g4 r8 g a16 f f a b8 f |
		b, es d f g16 a b c f,8 f |
		g es b' f c' g f f |
		b, g a f' f b b,4 |
		R1 |
		d4 a' d, r |
		c r f r8 es |
		c4 r r r8 b' |
		b4 a f r8 b,16 b |
		d b d d f d f f a f a a c a c c |
		d d, g g g e c' c c,4 r8 e |
		c4 r8 e c4 r8 e |
		c a r4 r16 e' g g c c, c c |
		c f a a c a c c b f b b d b d d |
		c g c c e, c e e d8 d d d |
		c e e g f16 c f f a8 f |
		r4 r8 a f16 g a b c8 a |
		r4 r8 a f16 g a b c8 a |
		g r f r g r c r |
		g c, c b a' d, g g |
		a4 r a, r |
		b' r d,8 d' g,4 |
		r2 r4 r8 f |
		f b b a f4 r |
		f r g r |
		g c, r16 f b b d, b d d |
		g es g g a c, c c b b d d f b, f' f |
		es g b b c g g g f c f f a c, f f |
		f d f f d f b b b b, es es c' a a a |
		b8 b, d16 b d d c g es' es f c f f |
		c4 r8 f f4 r8 a |
		f4 r8 a f r c r |
		f r es r r16 a c c d4 |
		r r8 d, b16 c d es f8 d |
		r4 r8 d b16 c d es f8 d |
		es r c r b r a r |
		d r es r b4 r |
		r2 r16 b d d f d f b |
		b8 b, b' b, b'8. d16 c b a g |
		f8. c16 f c f f b8 b, f' b |
		b,4 r a r |
		R1 |
		f'4 f d d |
		c c b r8 a' |
		b f a f f4 r8 d |
		es es c' d, b'4 r8 b |
		g4 r8 g a16 f f a b8 f |
		b, es d f g16 a b c f,8 f |
		g es b' f c' g f f |
		b, g a f' f4\fermata r \bar "||" |
		r2 r4 r8 es |
		d4 r8 d d4 r8 d |
		d4 r8 d d4 r |
		g16 d g g b g b b g4 r8 e |
		c16 a c c f c f f f4 r |
		R1*3 |
		r2 r16 cis e e a e a a |
		a8 d, r4 r16 b d d g d g g |
		g8 c, r4 r16 a c c f c f f |
		a8 a, r4 r2 |
		R1*2 |
		f'4 f d d |
		b8 d g g, f c' d f |
		g es d f g16 a b c f,8 f |
		g es b' f c' g f f |
		b, g a f' f4 r |
	\bar "|."
	}

}
staffAlt = \new Staff  {
	\set Staff.instrumentName="Riccardo"
	\set Staff.midiInstrument="oboe"
	\key b \major
	\clef treble
	\relative c'' {
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R1*12 |
			b4 f b16[\melisma a g f] b[ a g f] |
			b8[ a16 g] f[ es d c] d[ b d f] d[ f es d] |
			es[ d c d] es[ f g a] b8\melismaEnd a16[ g f8] g |
			f[ es16 d] es8 c d16[ c] b8 r4 |
			R1 |
			f'4 d' c a8 f |
			b4 a8 g a16[\melisma g a b] c8[ b] |
			a16[ g a b] c8[ b] a16[ g a b] c8[ b] |
			a[ b16 a] g8[ f] e16[ d]\melismaEnd c8 r4 |
			c'4 c, d8 b'4 d,8 |
			e c'4 e,8 f[\melisma f f g16 a] |
			g8[ g g a16 b] a4\melismaEnd r8 f |
			d16[\melisma e f g] c,8\melismaEnd f r4 r8 f |
			d16[\melisma e f g] c,8\melismaEnd f r4 f8 a |
			b16[\melisma c d b] a[ b c a] g[ a b g] f[ g a f]|
			e8[ d16 c]\melismaEnd f8 g a[ g16 f] c8 e |
			f2~\melisma f16[ g a b]c[ a b g] |
			f2\melismaEnd r4 r8 b |
			a[ g16 f] c'8 c, f4 r |
			R1 |
			b4 f b16[\melisma a g f] b[ a g f] |
			c'[ b a g] f[ es d c] d8\melismaEnd b r d |
			es c4 es8 f d4 f8 |
			g es4 c'8 a f r4 |
			b d g, c8 es, |
			f b4 d,8 es4 c'~ |
			c16[ b a g] f8 es d16[ c d es] f8 es |
			d16[ c d es] f8 es d16[\melisma d es f] es[ es f g] |
			f[ f g a] g[ g a b] a4\melismaEnd r8 b |
			g16[\melisma a b c] f,8\melismaEnd b r4 r8 b |
			g16[\melisma a b c] f,8\melismaEnd b r4 b8 f |
			g16[\melisma f es g] a[ g f a] b[ a g b] c[ b a c] |
			d8[ c16 b] a[ g f es] d[ f g a]\melismaEnd b8 g |
			a4 a8 b b2~\melisma |
			b8.[ c16 b8. c16] b8.[ d16] c[ b a g] |
			f2\melismaEnd r |
			g4. c8 a4 b8 es, |
			d4 c8. b16 b2 |
			R1*8 \bar "||" |
			g'4 a d,8[ e16 fis] g8 a |
			b[ a16 b] c8 a b[ a16 b] c8 a |
			b[ a16 b] c8 a b16[a] g8 r4 |
			b4. b8 b[ g] e c |
			a'4 a8 a a[ f] e[ d] |
			g[ f] b[ a] g[ f] b a |
			g[ f]es d cis[\melisma e] g4~ |
			g8[ a16 b] a[ g f e] f[ e d f] g[ f e g] |
			a[ c b a] g[ f e d] cis4\melismaEnd r |
			r a'8. c16 b8[ a] b4 |
			r8 g c b a[ g] a4 |
			r d8 fis, g[ fis] g4~ |
			g a8 b a4 d8 g, |
			f4. e16 d d2 |
			R1*5 |
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
		b4 a g d |
		es f g d |
		es f b, r8 b' |
		b, b' b, b' a4 r8 a |
		a, a' a, a' g4 r8 g |
		g, g' c, c' f,4 r8 es |
		d b' c, a' b b,r as' |
		g c f, b es, es' es, es' |
		es,4 r8 es f es d b |
		es c d b es c d b |
		es c d b c es f a |
		b es, f f, b4 r |
		b' a g d |
		g4 a b r |
		c, r d r8 es |
		f4 f, b8 c d es |
		f4 f, b r8 b' |
		b, b' b, b' a4 r8 a, |
		g8 g' c, c' f,4 r8 c |
		f4 r8 c f4 r8 c |
		f a, b d c c' b b, |
		a a' a, a' b, b' b, b' |
		c, c' c, c' d, d d d |
		e e e e f4 r8 a, |
		b g a f b' g a f |
		b, g a f b' g a f |
		g e f a b g a b |
		c b a g f b, c c, |
		f' g a b f4 r |
		f8 g a f g b c e, |
		f8 b, c e f4 r8 es |
		d b' c, a' b,4 r |
		b' a g d |
		es f b,8 b' b, b' |
		c,8 c' c, c' d, d' d, d' |
		es, es' es, es' f, f, f' f, |
		d'4 b es c |
		d g, c8 b a g |
		f g a f b4 r8 f' |
		b4 r8 f b, r c r |
		d r es r f es d b |
		es c d b es c d b |
		es c d b es c d b |
		es r f r g r a r |
		b r c r d d, g es |
		f es f f, b b' as4 |
		g4 d es r8 es |
		f4 es d r |
		es8 d c es f es d es |
		f4 f, b8 c16 d es f g a |
		b4 a g d |
		es f b r8 es, |
		d b' c, a' b b, r as' |
		g c f, b es, es' es, es' |
		es,4 r8 es f es d b |
		es c d b es c d b |
		es c d b c es f a |
		b es, f f, b4\fermata r \bar "||" |
		b'4 fis g b,8 c |
		d4 d,8 d' g4 c,8 d |
		g4 c,8 d g,4 r |
		g'8 d b g c4 r8 e |
		f c a f b4 r |
		b'8 a g f b a g f |
		es d g f e4 r8 d |
		cis4 r8 cis' d d, e g |
		f d' b g a a, g g' |
		fis d r4 g8 g, f f' |
		e c r4 f8 f, e e' |
		d c b a b' a g fis |
		g8 f e d cis a' b g |
		a4 a, d2 |
		b'4 a g d |
		es8 f g es f es d b |
		es c d b es c d b |
		es c d b c es f a |
		b es, f f, b4 r |
	\bar "|."
	}

}


\score {
	<<
		\staffViolin
		\staffViolinII
		\staffViola
		\staffAlt
		\context Lyrics = "lmelodyAlt" \lyricmode  { \lyricsto "melodyAlt" \verse }
		
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

