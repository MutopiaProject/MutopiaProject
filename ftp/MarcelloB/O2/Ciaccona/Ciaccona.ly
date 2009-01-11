% Created on Sat Nov 17 18:27:16 CET 2007
\version "2.10.33"

\header {
	title = "Ciaccona"
	composer = "Benedetto Marcello (1686-1739)"
	mutopiatitle = "Ciaccona"
	mutopiacomposer = "MarcelloB"
	mutopiaopus = "Op. 2, No. 13"
	mutopiainstrument = "Recorder and Basso Continuo"
	source = "Gieddes Samling I,51 mu 6208.0385 U68"
	style = "Baroque"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Björn Sothmann"
	maintainerEmail = "bjoerns@tp3.rub.de"
	maintainerWeb = "http://www.tp3.rub.de/~bjoerns"
 footer = "Mutopia-2007/11/25-1168"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"


staffAltoRecorder = \new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key f \major
	\clef treble
	\relative c'' {
		r4 f f |
		f e e |
		d a a |
		b c c |
		f, f'8. g16 a8. b16 |
		c4 c, e |
		f f,8. g16 a8. b16 |
		c8 d g,4. f8 |
		f4 f'8. g16 a8. f16 |
		g4 c,8. d16 e8. c16 |
		f4 f8. g16 a8. f16 |
		g8 a g4. f8 |
		f4 a8. b16 c8. d16 |
		g,4 g8. a16 b8. c16 |
		f,4 f8. g16 a8. b16 |
		c8 f, g4. f8 |
		f4 a r8 f |
		g4 c r8 c, |
		f4 b r8 d, |
		e f e4. f8 |
		f f16 g a8 f a f |
		r8 c16 d e8 c e c |
		r d16 e f8 d f d |
		g4 c,4. b8 |
		a4 f'16 g f g a8 f |
		g4 c,16 d c d e8 c |
		f4 f,16 g f g a8 f |
		c' d g,4. f8 |
		f4 f'4. f8 |
		f4\trill e4. e8 |
		e4\trill d4. d8 |
		d4 c8. d16 c8. b16 |
		a4 f'4. f8 |
		g4 g4. g8 |
		a4 a4. b8 |
		b c g4 c |
		a f d' |
		r g, c |
		r f, b~ |
		b8 a g4. f8 |
		f4 d'16 e d e d e d e |
		d4 c16 d c d c d c d |
		c4 b16 c b c b c b c |
		b8 a g c, c' b |
		a f4 a g16 f |
		c'8 c,4 e d16 c |
		f8 f,4 a g16 f |
		c'8 d c4. b8 |
		a f'16 g a4 r8 a |
		g e16 f g4 r8 g |
		f d16 e f4 r8 f |
		e f c4 e |
		f r8 f16 g a b c d |
		g,4 r8 e16 f g a b c |
		f,4 r8 d16 e f g a b |
		e,8 f g4. f8 |
		f16 g a g f g a g f a g f |
		g4 c, e |
		f16 g a g f g a g f g a b |
		c8 c, c4.\trill d16 e |
		f8 c f c f c |
		r c g' c, g' c, |
		r d a' d, a' d, |
		e f f4 e |
		f8 f16 g as8 a b h |
		c e,16 f g8 g as a |
		b d,16 e f8 g a h |
		c d g,4. f8 |
		f d'4 a d8 |
		r8 c4 g c8 |
		r8 b4 f b8 |
		e, f f e16 d c b a g |
		f4 f'4. f8 |
		f4 e4. e8 |
		e4 d4. d8 |
		g,8 a16 b c8 b a g |
		a16 f' e d c b a g f8 f' |
		r16 c' b a g f e d c8 c' |
		r16 f,, g a b c d e f g a b |
		c8 d c4. b8 |
		a16 g f e f4 r8 a |
		g16 f e d e4 r8 g |
		f16 e d c d4 r8 d |
		e f g4. f16 g |
		a4 a4. a8 |
		g4 g4. g8 |
		f4 f4. f8 |
		e d c d16 c b a b c |
		a8 f'4 a16 g f8 f |
		g g4 b16 a g8 g |
		a a4 c16 b a8 h |
		c c c, b'4 a16 g |
		a f a f a f a f a4 |
		r16 e g e g e g e g4 |
		r16 d f d f d f d f g a b |
		c8 b16 a g8. f16 e d c b |
		a c f c a c f c a c f a, |
		g c e c g c e c g c e c |
		d f a f d f a f d f a f |
		e8 f c4.\trill e8 |
		\times 2/3 {f c' b} \times 2/3 {a g f} \times 2/3 {a g f} |
		\times 2/3 {c' g f} \times 2/3 {e d c} \times 2/3 {e d c} |
		\times 2/3 {f a g} \times 2/3 {f e d} \times 2/3 {f e d} |
		\times 2/3 {e f g} \times 2/3 {c, e g} \times 2/3 {b, e g} |
		\times 2/3 {a, f g} \times 2/3 {a b c} \times 2/3 {d e f} |
		\times 2/3 {g g, a} \times 2/3 {b c d} \times 2/3 {e f g} |
		\times 2/3 {a d, e} \times 2/3 {f g a} \times 2/3 {b c d} |
		\times 2/3 {e, d c} b4. c8 |
		\times 2/3 {a f' g} \times 2/3 {a g f} \times 2/3 {a g f} |
		\times 2/3 {c' c, d} \times 2/3 {e d c} \times 2/3 {e d c} |
		\times 2/3 {f f, g} \times 2/3 {a g f} \times 2/3 {a g f} |
		c' d \times 2/3 {g, a b} \times 2/3 {c d b} |
		a4 f'4. f8 |
		f4 e4. e8 |
		e4 d4. d8 |
		g4 c,8. d16 c8. b16 |
		a4 f f' |
		r c c' |
		r d, d' |
		c c4. b8 |
		\times 2/3 {a c a} \times 2/3 {f c' a} \times 2/3 {f c' a} |
		\times 2/3 {g g e} \times 2/3 {c g' e} \times 2/3 {c g' e} |
		\times 2/3 {f a f} \times 2/3 {d a' f} \times 2/3 {d a' f} |
		\times 2/3 {g a b} \times 2/3 {c c, d} \times 2/3 {e f g} |
		\times 2/3 {f c f} \times 2/3 {f c f} f16 g a f |
		\times 2/3 {g8 c, g'} \times 2/3 {g c, g'} g16 a b g |
		\times 2/3 {a8 f a} \times 2/3 {a f a} \times 2/3 {a8. g16 f8} |
		c'8 f, g4. f8 |
		\times 2/3 {f c a} \times 2/3 {f a c} \times 2/3 {f a f} |
		\times 2/3 {g g e} \times 2/3 {c e g} \times 2/3 {c g e} |
		\times 2/3 {f a f} \times 2/3 {d f a} \times 2/3 {d a f} |
		\times 2/3 {e f g} \times 2/3 {g f e} \times 2/3 {g f e} |
		f4 es4. es8 |
		es4 d4. d8 |
		d4 c4. c8 |
		g'4 c,4. b8 |
		a16 f g a b c d e f g f g |
		r c, d e f g a b c d c d |
		r d, e f g a b c d e d e |
		e,8 f g4.\trill f16 e |
		f c f a f c f a f c f a |
		g c, e g e c e g e c e g |
		f d f a f d f a f d f a |
		e8 f e4. f8 |
		f a16 g f8 f f f |
		f a16 g f8 f f f |
		f a16 g f8 f f f |
		b a g4. f8 |
		f16 f, g a b c d e f g f g |
		f f, g a b c d e f g f g |
		f f, g a b c d e f g f g |
		f8 f f4. e8 |
		f as4 f8 as8 g16 f |
		g8 g4 e8 g f16 e |
		f8 f4 d8 f e16 d |
		e8 f c4. e8 |
		f4 c4. c8 |
		c4 c4. c8 |
		f4 f,8. g16 a8. b16 |
		c8 d g,2 |
		f2. |
	\bar "|."
	}

}
staffCello = \new Staff  {
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c {
		R2.*4 |
		r4 f f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		c c c |
		d d d |
		b c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f,8 f'16 g a8 f f, f' |
		e e16 f g8 e e, e' |
		d d16 e f8 d d, d' |
		c4 c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, r8 f'16 g a8 f |
		e4 r8 e16 f g8 e |
		d4 r8 d16 e f8 d |
		c4 c c |
		f,8 f'16 g a4 r8 f |
		e e16 f g4 r8 e |
		d d16 e f4 r8 d |
		c4 c c |
		f, f' f |
		e16 f g f e f g f e g f e |
		d4 d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e es es |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f,8 f' a f a f |
		c e c e c e |
		r d f d f d |
		c4 c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f,8 f' a c a f |
		e c e g c c, |
		d f a f d b |
		c4 c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, r8 c'' a f |
		c4 r8 c e c |
		d4 r8 a' f d |
		c4 c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		\times 2/3 {f,8 f'' e} \times 2/3 {f f, g} \times 2/3 {a g f} |
		\times 2/3 {c c' b} \times 2/3 {c c, d} \times 2/3 {e d c} |
		\times 2/3 {d d' c} \times 2/3 {d d, e} \times 2/3 {f e d} |
		c4 c c |
		\times 2/3 {f,8 f' g} \times 2/3 {a b c} \times 2/3 {d e f} |
		\times 2/3 {e, c d} \times 2/3 {e f g} \times 2/3 {a b c} |
		\times 2/3 {d, b c} \times 2/3 {d e f} \times 2/3 {g a b} |
		c,4 c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, g4. a8 |
		b4 h h |
		c c c |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e r |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f, f' f |
		e e e |
		d d d |
		c c c |
		f,8 f' a f a c |
		e, c e c e c |
		d d f d f d |
		c b c4 c |
		f,2. |
	\bar "|."
	}

}


\score {
	<<
		\staffAltoRecorder
		\staffCello
	>>
	
	\midi {
	}

	\layout  {
	}
}

\paper {
}

