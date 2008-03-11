\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c'' {
		R1*38 |
		r4 d4 e8 r32 g e c g8 r32 e' c g |
		e4 r r r8 r32 g c e |
		g8 r32 c, e g b4 r2 |
		r a,~ |
		a <g b> |
		<f a>1 |
		es' |
		d |
		r8 r16 d32 g b8 r r r16 g32 es c8 r16 es32 c |
		a4 r r fis' |
		g8 b,16 d d4 r2 |
		r8 es16 g g4 r2 |
		r8 c,16 a' a8 r r b,16 d d f f8~ |
		f2~ f~ |
		f1 |
		g8 r16 b32 g es8 r16 g32 es b2~ |
		b~ b |
		r8 r16 f'32 des b8 r16 des32 b g8 r r4 |
		r8 r16 es'32 c as8 r16 c32 as es4 r |
		r f' g r |
		r2 r4 a |
		b r g r |
		g r r2 |
		r8 r16 c,32 es g4 r2 |
		r r8 r16 c,32 f as4 |
		R1 |
		r8 r32 g, h d g4 r2 |
		r8 r32 g, c es g8 r r4 d |
		es r r2 |
		R1*4 |
		s2.
	\bar "|."
	}

}
