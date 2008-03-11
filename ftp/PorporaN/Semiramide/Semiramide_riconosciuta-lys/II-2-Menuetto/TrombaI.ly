\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Trombe"
	\set Staff.midiInstrument="trumpet"
	\key d \major
	\clef treble
	\relative c'' {
		d4 r r |
		e r r |
		fis a h |
		e,2. |
		d4 r r |
		e r r |
		fis a e |
		fis2 r4 \bar ":|:"
		R2.*3 |
		e4 r r |
		e r fis |
		gis a2~ |
		a4 gis2 |
		a r4 \bar ":|:" 
		d,8 a d4 fis |
		e8 a, e'4 g |
		fis8 g a4 h |
		e,2. |
		d8 a d4 fis |
		e8 a, e'4 g |
		fis a e |
		fis r r |
		d8 a d4 fis |
		e8 a, e'4 g |
		fis8 g a4 h |
		e,2. |
		d8 a d4 fis |
		e8 a, e'4 g |
		fis a e |
		fis a e |
		fis d8 a d a |
		fis4 r r |
	\bar "|."
	}

}
