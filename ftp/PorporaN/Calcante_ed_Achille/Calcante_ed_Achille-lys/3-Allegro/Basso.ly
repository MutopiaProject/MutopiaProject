\new Staff  {
	\set Staff.instrumentName="Viola col Basso"
	\set Staff.midiInstrument="harpsichord"
	\key g \major
	\clef bass
	\relative c {
		\repeat volta 2{
		\partial 8 r8 |
		r4 r8 r32 d e fis |
		g8 d h g |
		g' d h g |
		g' h c a |
		h g a d, |
		g h c a |
		h g a d, |
		g16 h a g fis d e fis |
		g h a g fis d e fis |
		g8 h fis d' |
		g, h fis d' |
		g, e a a, |
		d16 e fis g a g fis e |
		d2~ |
		d16 e fis g a g fis e |
		d2~ |
		d16 e fis g a g fis e |
		d e fis g a g fis e |}
		\alternative {{d8. e16 d c h a}{d8. h'16 a g fis e}}
		\repeat volta 2{
		d4 r8 r32 a' h cis d8 a fis d |
		d' a fis d d,2~ |
		d~ d8 d' c h |
		a h c d g d h g |
		g' d h g g' d h g |
		c' a h g a d, g h, |
		c a' h, g' a, fis' g g, |
		g' g, h d g g, g' g, |
		g' g, h d g16 h a g fis d e fis |
		g h a g fis d e fis g h a g fis d e fis |
		g8 g, h d g,2~ |
		g g16 a h c d c h a |
		g a h c d c h a}
		\alternative {{g8. h'16 a g fis e}{g,4 r\fermata}}
	\bar "|."
	}
}
