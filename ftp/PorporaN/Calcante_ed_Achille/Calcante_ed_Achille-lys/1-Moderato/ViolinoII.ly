\new Staff  {
	\set Staff.instrumentName="Violino II"
	\set Staff.midiInstrument="violin"
	\key g \major
	\clef treble
	\relative c' {
		g8 a h c d c h g |
		c h a d d'4~ d16 g, e' g, |
		\appoggiatura g8 fis8. g32 a g16 d' g d e g, d' g, \appoggiatura d'8 c8.\prall h32 c |
		\appoggiatura c8 h4 r a'~ a16 d, h' d, |
		g4~ g16 e a e fis a, g' a, a'4~ |
		a2~ a4. g8 |
		fis16 d g d a'4~ a16 d, fis d g d a' d, |
		b'8 a g fis g16 d g d g cis, g' d |
		a'2~ a16 d, fis d g d a' d, |
		h'32 c d8.~ d8 fis, g16 g, h g c g d' g, |
		e'8 c d, fis'\prall g2~ |
		g8 g,4 fis8\trill g16 d' g d e g, d' g, |
		e' g, d' g, \appoggiatura d'8 c8.\trill h32 c h16 g h g c g cis g |
		d'2~ d |
		e16 c fis c g' c, a' c, <fis a, d,>2\fermata |
	\bar "|."
	}
}
