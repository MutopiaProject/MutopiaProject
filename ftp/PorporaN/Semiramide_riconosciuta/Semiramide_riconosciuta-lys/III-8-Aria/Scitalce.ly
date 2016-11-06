\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Scitalce}
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*17 |
			d2 d,8.[ e16] fis8.[ gis16] |
			a4.\prall\melisma gis8\melismaEnd a2 |
			d d,8.[ e16] fis8.[ gis16] |
			a4.\prall\melisma gis8\melismaEnd a4 d |
			cis8[ h] a4 r d |
			cis8[ h] a4 r2 |
			R1 |
			a2 d,4. c'8 |
			h4.\melisma a8\melismaEnd h2 |
			a2 d,4 c' |
			h2 r2 |
			h e,4. d'8 |
			cis4.\melisma h8\melismaEnd cis2 |
			h e,4 d' |
			cis4.\prall\melisma h16[ cis] d4.\prall cis16[ d] |
			e4 d8.[\trill cis16] h8.[ a16 gis8. fis16] |
			e4.\prall fis16[ gis] a4.\melismaEnd cis,8 |
			d2 e |
			fis r4 cis' |
			d2 e |
			a,4 cis8[ d] e4 e, |
			a4. fis'8 e[ d] cis[ h] |
			a2 r |
			R1*3 |
			d2 d,8.[ e16] fis8.[ gis16] |
			a8[ gis] a4 r2 |
			d d,8.[ e16] fis8.[ gis16] |
			a8.[ gis16] a4 r4 d |
			cis8[ h] a4 r d, |
			cis8[ h] a4 r2 |
			a' d,4. c'8 |
			h4.\melisma a8\melismaEnd h2 |
			a4.\prall\melisma g16[ a]\melismaEnd d,4. c'8 |
			h2 r |
			h e,4. d'8 |
			cis4.\melisma h8\melismaEnd cis2 |
			h4.\prall\melisma a16[ h]\melismaEnd e,4 d' |
			cis4.\prall\melisma h16[ cis] d4.\melismaEnd fis,8 |
			g2 a |
			h4.\melisma a32[ h cis16] d4.\melismaEnd fis,8 |
			g2 a |
			h, r4\fermata d' |
			g,2 a |
			d,4 d' g, a |
			d,2 r |
			R1*5 \bar "||" |
			h'2 d4. h8 |
			fis'2 fis, |
			h4.\melisma cis16[ d]\melismaEnd cis4 h |
			ais4.\prall\melisma gis8\melismaEnd fis2 |
			h h,8.[ cis16] d8.[e16] |
			fis4.\prall\melisma eis8\melismaEnd fis2 |
			h2 h,8.[ cis16] d8.[ e16] |
			fis4.\prall\melisma eis8\melismaEnd fis2 |
			r4 h h a |
			g4.\melisma fis8\melismaEnd g2 |
			e'8[ d cis h] a4 g |
			fis2 h |
			r h |
			r4 h h h |
			h4.\melisma a16[ gis]\melismaEnd a4. fis'8 |
			h,2 cis |
			d r4 fis |
			h,2 cis |
			fis, r4 a |
			gis cis, r cis' |
			a fis r2 |
			d' cis4. h8 |
			fis'2 fis, |
			d' cis4. h8 |
			fis'2 fis,4. a8 |
			h2 cis |
			d r4\fermata fis |
			h,2 cis |
			fis, r\fermata |
			R1*5 |
		}

	\bar "|."
	}

}
