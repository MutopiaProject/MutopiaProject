\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Semiramide}
	\set Staff.midiInstrument="oboe"
	\key d \minor
	\clef treble
	\relative c'' {
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R1*2 |
			a8 d, d' a d a16 a a8 a |
			f8 d f a f d d'4~\prall |
			d8 c16 b a8 g f4 d'~ |
			d8 c16 b a8 g f16[ e d8] r4 |
			r r8 a' b8. b16 b8 a |
			g16[ f] g8 r g c8. c16 c8 b |
			a16[ g] a8 d4 c8 b16 a g8 f |
			c' b16[ a] g8 f c' b16[ a] g[ f] e[ d] |
			c4 b' a8 g16 f g4\prall |
			f8 d' c d a4\melisma g\prall\melismaEnd |
			f r r2 |
			r r4 a8 f |
			c' f,16 f f[ g] a[ h] c8 c, r4 |
			d'8 g,16 g g[ a] h[ cis] d8 d, a'4~ |
			a8 g16 f e8 d a' h16[ cis] d8 gis, |
			a h16[ cis] d8 gis, a4 r |
			r4 r8 a a8. d,16 d8 c' |
			h16[ a] h8 r h8 h8. e,16 e8 d' |
			cis16[ h] cis8 d4 b8 d a d |
			g, cis d d, a' cis d d, |
			a' g16[ f]e[ d]cis[ h] a4 cis' |
			d8 d, e4\prall d8 b' a d |
			f,4\melisma e\melismaEnd d r |
			R1*2 \bar "||" |
			c'8. f,16 f8 r r f g4 \grace {a16[ b]} c8 \appoggiatura c8 b4. |
			a r8 r f g4 \grace {a16[ b]} c8 \appoggiatura c8 b4. |
			a4 c8 c4.~ c8 a16[ b] c8 c4.~ |
			c8 b16[ a] g[ f] f8[ e] f g4 c8 \appoggiatura c h4 f8 |
			\appoggiatura f e4 c'8 \appoggiatura c h4 f8 e16.[ f32] g4 r8 r a |
			b8. c16[ b8] b4 b8 d16[ c b8] b b4 b8 |
			d16[ c] b4 a8[ gis a] \appoggiatura a gis4. h4\melisma c16[ d]\melismaEnd |
			c[\melisma h] a4\melismaEnd h4\melisma c16[ d]\melismaEnd c[\melisma h] a4\melismaEnd h4\melisma c16[ d]\melismaEnd |
			c16[ h] a4 a a8 a2.~ |
			a4.\melisma h\melismaEnd a r4 r8 |
		}

	\bar "|."
	}

}
