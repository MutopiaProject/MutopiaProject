\new Staff  {
	\time 3/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 50 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key g \minor
	\clef treble
	\relative c''' {
		b8 a g |
		b a g |
		\appoggiatura g fis4 g8 |
		\appoggiatura d cis4 d8 |
		es16 d a' c, b a |
		b d g b, a g |
		a es' d fis, g g' |
		\appoggiatura g8 fis4 g8 |
		b,16. c32 c8.\trill b32 c |
		d8 d, r \bar ":|:"
		d'16 b g' d b' d, |
		es8 c, r |
		f'16 c a' f c' es, |
		d b' b, d c b |
		c a' a, c b a |
		b g' g, b a g |
		a es' d fis, g g' |
		\appoggiatura g8 fis4\trill g8 |
		c,32 b a16 \appoggiatura b8 a8.\trill g16 |
		g8\fermata g, r |

	\bar ":|"
	}
}
