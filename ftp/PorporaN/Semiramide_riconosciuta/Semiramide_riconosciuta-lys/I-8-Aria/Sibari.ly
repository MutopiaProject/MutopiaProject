\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Sibari}
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			R2.*22 |
			a4 d,8[ e] fis[ g] |
			a4\melisma h\melismaEnd cis |
			d d,8[ e] fis[ g] |
			a4\melisma h\melismaEnd cis |
			d d, r |
			h'16[ cis h8] d4 h |
			a16[\melisma h a8] d4\melismaEnd a |
			g2. |
			fis4 r r |
			a h8[ a] h[ a] |
			g4 a8[\melisma g] a[ g]\melismaEnd |
			fis4 e r |
			a h8[ a] h[ a] |
			g4 a8[\melisma g] a[ g]\melismaEnd |
			fis4 e a |
			a\melisma gis\melismaEnd a16[ h cis8] |
			cis4\melisma h\melismaEnd d |
			cis8 e[ d cis h a] |
			h4 \appoggiatura a gis2 |
			cis16[\melisma d e8] d[ cis]\melismaEnd h[ a] |
			e4 h'2\prall |
			a4 r r |
			R2.*9 |
			a4 d,8[ e] fis[ g] |
			a4\melisma h\melismaEnd c |
			h g8[ a] h4 |
			a\melisma d,\melismaEnd c' |
			h8.[ a16] g4 r |
			h e,8[ fis] gis[ a] |
			h4\melisma cis\melismaEnd d |
			cis a8[ h] cis4 |
			h\melisma e,\melismaEnd d' |
			cis8.[ h16] a4 r |
			a h8[ a] h[ a] |
			g4 a8[\melisma g] a[ g]\melismaEnd |
			fis4 e r |
			a h8[ a] h[ a] |
			g4 a8[\melisma g] a[ g]\melismaEnd |
			fis4 e e16[ fis g8] |
			g4\melisma fis\melismaEnd g16[ a h8] |
			h4\melisma a\melismaEnd cis |
			d\melisma cis16[ h8.]\melismaEnd a16[ g8.] |
			fis16[ e d8] e2\prall |
			d4 h'2\prall |
			a4 h2\prall |
			a4\melisma h\melismaEnd cis |
			d\melisma cis16[ h8.]\melismaEnd a16[ g8.] |
			fis2.\prall |
			e4 r e16[ fis g8] |
			g4\melisma fis\melismaEnd g16[ a h8] |
			h4\melisma a\melismaEnd cis\prall |
			d\melisma cis16[ h8.]\melismaEnd a16[ g8.] |
			fis16[ e d8] e2\prall |
			d4 r r |
			R2.*9 \bar "||" |
			fis4 h,8[ cis] d[ e] |
			fis4\melisma gis\melismaEnd ais |
			h h,8[ cis] d[ e] |
			fis4\melisma gis\melismaEnd ais |
			h h, r |
			g'16[ a g8] h4 g |
			fis16[ g fis8] h4 fis |
			e2.\prall |
			d4 r r |
			g16[ a g8] h4 g |
			fis16[ g fis8] h4 fis |
			e2. |
			d4 fis4.\melisma gis16[ a]\melismaEnd |
			a4 gis h |
			h\melisma ais\melismaEnd cis16[ d e8] |
			d4 \appoggiatura cis h2 |
			cis4\melisma a8.[ h16] \times 2/3 {cis8[ h a]} |
			h4 gis8.[ a16] \times 2/3 {h8[ a gis]} |
			a[ cis]\melismaEnd h[ a] gis[ fis] |
			gis4 \appoggiatura fis eis2 |
			a16[ h cis8]\melisma h[ a]\melismaEnd gis[ fis] |
			cis4 gis'2\prall |
			fis r4 |
		}

	\bar "|."
	}

}
