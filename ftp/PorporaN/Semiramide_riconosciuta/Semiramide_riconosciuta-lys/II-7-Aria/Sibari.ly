\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Sibari}
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' {
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R4.*14 |
			c8 f,16[ g] a[ b] |
			c8[ d] c |
			\appoggiatura c b4 a8 |
			c8 b16[ a] g[ f] |
			g8 \appoggiatura f e4 |
			f8[ c] f |
			\grace{a16[ b]} c8 b16[ a] g[ f] |
			g8 \appoggiatura f e4 |
			f8[ c] f |
			\grace{a16[ b]} c8 b16[ a] g[ f] |
			d'16.[ c32 b8] a |
			\appoggiatura a g4 r8 |
			g a b |
			a\melisma r16 a32[ b] c32[ b a16] |
			g16.[ f32 g16 a] b32[ a g16] |
			a8 r16 a32[ b] c[ b a16] |
			g16.[ f32 g16 a] b32[ a g16] |
			a8 h4\melismaEnd |
			c8 c, f |
			e[ d] h' |
			c[ h16 a] g[ f] |
			e[c'] d8. c16 |
			c8 r r |
			R4.*5 |
			g8 c,16[ d] e[ f] |
			g8[ a] b |
			a g r |
			g c,16[ d] e[ f] |
			g8[ a] b |
			a g c~ |
			c b16[ a] g[ f] |
			g8 \appoggiatura f e4 |
			f8 c c'~ |
			c b16[ a] g[ f] |
			g8 \appoggiatura f e4 |
			f8 c r |
			f g a |
			d,[\melisma a' b]~ |
			b16.[ c32] b[ a g16] a32[ g f16] |
			e8[ h' c]~ |
			c16.[ d32] c[ b a16] b32[ a g16] |
			f8 r16 a32[ b] c[ b a16] |
			g16.[ f32 g16 a] b32[ a g16] |
			a8 r16 a32[ b] c[ b a16] |
			g16.[\prall f32 g16 a] b32[ a g16] |
			a8 b8.[ a32 b]\melismaEnd |
			c8 b16[ a] g[ f] |
			c'8 b16[ a] g[ f] |
			g8 \appoggiatura f e4 |
			f8 r r |
			R4. |
			c'8 f, r |
			g c, b' |
			a16[ g] f8 r |
			g c, b' |
			a b8.[ a32 b] |
			c8 b16[ a g f] |
			c'8 b16[ a] g[ f] |
			d'8 c f |
			a, g4\prall |
			f8 r r |
			R4.*6 |
			a8 d,16[ e] f[ g] |
			a8[ b] a |
			\appoggiatura a g4 f8 |
			a g16[ f] e[ d] |
			b'8[ a] d, |
			cis d r |
			c' f,16[ g] a[ b] |
			c8[ d] c |
			\appoggiatura c b4 a8 |
			d b a |
			\appoggiatura a gis4 a8 |
			\appoggiatura a gis4 a8 |
			e4\prall d'8 |
			c16.[ d32] \appoggiatura c8 h4\prall |
			a r8 |
			h[ e,] d' |
			c16.[ h32] a8 r |
			h e, d' |
			c16[\melisma e d c h a] |
			h8\melismaEnd \appoggiatura a gis4 |
			e'8 d16[ c] h[ a] |
			e8 h'4\prall |
			a r8 |
		}

	\bar "|."
	}

}
