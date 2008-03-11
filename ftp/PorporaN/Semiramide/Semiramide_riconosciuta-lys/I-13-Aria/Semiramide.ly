\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Semiramide}
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' {
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			\partial 4 r4 |
			R2.*8 |
			r4 r a16[ b c8] |
			d4 f, g16[ a b8] |
			a8.[ b16] \appoggiatura a4 g2 |
			f8.[\prall\melisma e32 f] g4\melismaEnd r |
			a16[ b c8] b16[ a8.] g16[ f8.] |
			a16[ b c8] b16[ a8.] g16[ f8.] |
			g16[\melisma a b8] a16[ f8.]\melismaEnd g16[ e8.] |
			f4 c as' |
			\appoggiatura as8 g4. b8 as8. g16 |
			as16[ g f8] f4. as8 |
			\appoggiatura as g4. b8 as8. g16 |
			as[ g f8] f4. c'8 |
			\appoggiatura c h4. c8 d8. f,16 |
			\appoggiatura f4 e2 c'4 |
			\appoggiatura c h2 f4 |
			e8.[\melisma f16] g8.[ a16] b[ a g8] |
			a4 h2 |
			c4 h16[ a8.]\melismaEnd g16[ f8.] |
			e16[ d c8]\melisma d4\melismaEnd h' |
			c\melisma h8.\melismaEnd a16 g8. f16 |
			e16[ d c8] d'2\prall |
			c4 r r |
			R2.*5 |
			r4 r a16[ b c8] |
			c4 f, g16[ a b8] |
			a8.[\melisma b16] \appoggiatura a4 g2\melismaEnd |
			f4\melisma c\melismaEnd g'16[ a b8] |
			a8.[ b16] \appoggiatura a4 g2 |
			f8.[ e32 f] g4 r |
			b16[ c d8] c16[ b8.] a16[ g8.] |
			a16[ b c8] b16[ a8.] g16[ f8.] |
			g16[ a b8]\melisma a16[ f8.]\melismaEnd g16[ e8.] |
			f4 c as'16[ b c8] |
			c4\melisma g8.\melismaEnd b16 as8. g16 |
			as16[ g f8] f4 as16[ b c8] |
			c4\melisma g8.\melismaEnd b16 as8. g16 |
			as16[ g f8] f4 a\prall |
			b\melisma f\melismaEnd h |
			\appoggiatura h c4.\melisma b16[ a] b8[ a16 g] |
			a8.[ b32 c] b8[ a]\melismaEnd g[ f] |
			c2\fermata g'8.[ a32 b] |
			a4 g4.\melisma a16[ b]\melismaEnd |
			a4 g4.\melisma a16[ b]\melismaEnd |
			\times 2/3 {a8[\melisma g a]} \times 2/3 {b[ a b]} \times 2/3 {c[ b c]} |
			d4 e,\melismaEnd f |
			b16[ a g8] \appoggiatura a4 g2 |
			f4 g4.\prall\melisma a16[ b]\melismaEnd |
			a4 g4.\melisma a16[ b]\melismaEnd |
			a4 g4.\melisma a16[ b]\melismaEnd |
			\times 2/3 {a8[ g a]\melisma} \times 2/3 {b[ a b]} \times 2/3 {c[ b c]} |
			d4 e,\melismaEnd f |
			b16[ a g8] \appoggiatura a4 g2\prall |
			f4 r r |
			R2.*8 \bar "||" |
			\time 4/4
			a8 b16 a d8 a b4\prall a8 d |
			b2\prall a4 d~ |
			d8 c16 b a8 g f a d4~ |
			d8 c16 b a[ g] f[ e] f[ e] d8 r4 |
			r d' d8 gis, gis gis |
			a16[ gis] a4 h16[ cis] d8 gis, gis gis |
			a16[ gis] a8 r a b a16[ b] c8 b |
			a16[ g] a8 r d g, f16[ g] a8 g |
			f d' d4~ d8[ c] c[ b]|
			b[ a] a gis gis4 h~ |
			h8[ c16 d] c8 gis a2~ |
			a~ a4 h8. a16 |
			a2 r4\fermata
		}

	\bar "|."
	}

}
