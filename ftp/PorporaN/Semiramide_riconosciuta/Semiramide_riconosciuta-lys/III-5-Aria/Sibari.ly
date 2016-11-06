\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Sibari}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' {
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R1*9 |
			g8[ c] h4\prall c8 g4 a8 |
			f8.[ e32 f] g8 f e c' c c |
			h16[ a] g8 g g e c' c c |
			h16[ a] g8 g g e16[ d] c8 r4 |
			c'8 g4\melisma b8\melismaEnd a16[ g] f4 a8 |
			g d4\melisma f8\melismaEnd e16[d]c8 r4 |
			c'8 g4\melisma b8\melismaEnd a16[ g] f8 r4 |
			d'8 a4\melisma c8\melismaEnd h8.[\melisma a32 h] c8.[ h32 c] |
			d8[ c16 h] \appoggiatura d8 c[ h16 a] h8.[ a32 h] c8.[ h32 c] |
			d8[ c16 h] c8[ h16 a] h8[ d16 c]\melismaEnd h16[ a] g8 |
			a4 fis g r8 h |
			c4 d g, r |
			R1*3 |
			g8[ c] h4\prall c8 g4 a8 |
			b8.[ a32 b] c8 b a h4 c8 |
			f,8.[\prall e32 f] g8 f e c' c c |
			h16[ a] g8 g g e c' c c |
			h16[ a] g8 g g e16[ d] c8 r4 |
			c'8 g4\melisma b8\melismaEnd a16[ g] f4 a8 |
			g d4\melisma f8\melismaEnd e16[ d] c8 r4 |
			c'8 g4\melisma b8\melismaEnd a16[\melisma g] f4 a8 |
			g8 d4 f8 e8.[\prall d32 e] f8.[\prall e32 f] |
			\appoggiatura a8 g[ f16 e] \appoggiatura g8 f[ e16 d] e8.[ d32 e] f8.[ e32 f] |
			g8[ f16 e] f8[ e16 d] c'8[ h16 a]\melismaEnd g8 f |
			e4 d c r |
			g'4 f e8.[\melisma d32 e] f8.[ e32 f] |
			g8[ f16 e] f8[ e16 d] c'8[ h16 a]\melismaEnd g8 e |
			f4 g a r8 c |
			f,4 g c, r |
			R1*4 \bar "||"
			e8[ a] gis4\prall a8 e4 f8 |
			d8.[ c32 d]e8 d c e4 a8 |
			d,8.[ c32 d] e8 d c a' a a |
			gis16[ fis] e8 e e c a' a a |
			gis16[ fis] e8 e e c16[ h] a8 r4 |
			h'8 fis4\melisma a8\melismaEnd g16[ fis] e4 h'8 |
			h8\melisma fis4\melismaEnd a8 g8.[\prall fis32 g] a8.[\prall g32 a] |
			h4 a g8.[ fis32 g] a8.[ g32 a] |
			h4 a g8[ h16 a] g[ fis] e8 |
			fis4 dis e r |
			a h c r |
			a h e,2 |
		}

	\bar "|."
	}

}
