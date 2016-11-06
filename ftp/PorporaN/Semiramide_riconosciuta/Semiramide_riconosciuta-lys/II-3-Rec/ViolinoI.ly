\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c'' {
		R1*21 |
		\cadenzaOn R2 \cadenzaOff \bar "|" |
		R1*21 |
		r2 r8 r32 d a f d8 r32 a' f d |
		b4 r a16 a a a a a a a |
		a1 |
		g2~ g |
		d'1~ |
		d~ |
		d |
		g,16 b' d g b g b g d b' g d b g' d b |
		<b f d>4 r <f' b, d,> r |
		R1 |
		r8 r32 g, b es g8 r32 b, es g b8 r r4 |
		r8 r16 c c8 r16 f, f4 r |
		r4 f g r |
	\bar "|."
	}

}
