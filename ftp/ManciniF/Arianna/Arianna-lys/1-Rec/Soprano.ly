\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100
	\set Staff.instrumentName="Soprano"
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			b8 b16 b d8 f a,4 a |
			r8 a16 b c8 c16 d es4 es |
			r8 es16 d c8 d16 es f8 f16 c es8 d |
			d4 d r8 d16 d d8 a16 c |
			b4 r8 d b d d a |
			r4 d8 h16 d g,8 g r g |
			h h r h d d d es |
			f f es d es4 es |
			r8 es16 es es8 d16 c b8 b16 c as8 as16 g |
			g8 g r b es es es d |
			cis cis h a d4 d |
			r8 b c d g, g r d' |
			b b r4 r2 |
		}
	\bar "||"
	}
}
