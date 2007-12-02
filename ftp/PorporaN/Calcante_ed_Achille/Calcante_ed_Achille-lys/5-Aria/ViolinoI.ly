\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key g \major
	\clef treble
	\relative c'' {
		\partial 8 r16 h |
		h4 h'2 a4 |
		g fis8.\trill e16 fis4 h |
		e,8.\trill \times 2/3 {d32 e fis} g2 a4 |
		e4 d8.\trill c16 d8 dis\trill e4~ |
		e fis4. h16 a g fis e d |
		c8 e16 d c h a g fis8 dis'\trill e c |
		g4 fis\trill e r |
		r4 h''2 a4 |
		g fis8. e16 fis4 h |
		e,4. r16 g, a2 |
		d, g~ |
		g4 a2 h4~ |
		h c4. cis8\trill d4~ |
		d e h a\trill |
		g8 d'16 c h a g fis e8 e'16 d c h a g |
		fis8 d' h g' h,4 a\prall |
		g d''4. cis16 h a8 g |
		d4. e8 fis2~ |
		fis4 e8 h e2~ |
		e4 dis8.\trill e32 fis h,4 h'~ |
		h8 c16 h a g fis e dis8 fis16 e dis c h a |
		g8 gis a4. ais8 h4~ |
		h c g fis\trill |
		e8 g'16 fis e d c h c8 c'16 h a g fis e |
		dis2\fermata r |
		r r8 h'16 a g fis e d |
		c8 c'16 h a g fis e dis8 h g' fis16 e |
		e4 dis\prall e r |
		r r g~ |
		g fis gis\trill |
		a e~ e8. d16 |
		c4 h e~ |
		e d fis~ |
		fis e gis |
		a2. |
		gis4\fermata r r |
		e16 e e e e e e e e e e e |
		d d d d d d d d h h h h |
		c c c c c c c c c c c c |
		c c c c h h h h h h h h |
		c c c c c c c c c c c c |
		c c c c h h h h h h h h |
		<h g> <h g> <h g> <h g> <a g> <a g> <a g> <a g> <a g> <a g> <a g> <a g> |
		<a fis> <a fis> <a fis> <a fis> <a fis> <a fis> <a fis> <a fis> <h g> <h g> <h g> <h g> |
		<<{a2.}\\{g4 fis2}>> |
		g2 r4\fermata |
	\bar "|."
	}
}
