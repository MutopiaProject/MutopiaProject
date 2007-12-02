\new Staff  {
	\time 2/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violini unisono"
	\set Staff.midiInstrument="violin"
	\key g \major
	\clef treble
	\relative c'' {
		\repeat volta 2{
		\partial 8 r32 d e fis |
		g4 d |
		h8 g g' d |
		h g g' d |
		h g e'4 |
		d8 h c4 |
		h8 g e'4 |
		d16 c h d c h a c |
		h g d4 c'8 |
		h16 g d4 c'8 |
		h16 g d h' a c h a |
		h g d h' a c h a |
		h a g h a g fis e |
		d2~ |
		d16 e fis g a g fis e |
		d2~ |
		d16 e fis g a g fis e |
		d e fis g a g fis e |
		d e fis g a g fis e |}
		\alternative {{d4. r32 d' e fis}{d,4. r32 a' h cis}}
		\repeat volta 2{
		d4 a fis8 d d' a |
		fis d d' a fis16 e d e fis e d e |
		fis e d e fis e fis g a g a h c h c d |
		e8 e e fis g4 d |
		h8g g' d h g g' d |
		e4 d8 h c4 h8 g |
		e'4 d8 h c4 h16 a h c |
		h a h c d c h a g4 h16 a h c |
		h a h c d c h a g8 d4 c'8 |
		h16 g d4 c'8 h16 g d4 c'8 |
		h16 a h c d c h a g a h c d c h a |
		g a h c d c h a g a h c d c h a |
		g a h c d c h a }
		\alternative {{g8. h'16 a g fis e}{g,4 r\fermata}}
	\bar "|."
	}
}
