\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Scitalce}
	\set Staff.midiInstrument="oboe"
	\key a \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\partial 4 r4 |
			R2.*10 |
			r4 r4 e |
			\appoggiatura d cis~ cis16 fis[ e d] cis[ h] a[ gis] |
			a8.[\prall gis32 a] e4 a8.[ h32 cis] |
			h4. gis8 e d' |
			d4\prall cis8 a[ cis e] |
			d4~ d16[ cis] h[ a] gis[ fis] e[ d] |
			d4\prall cis r8 e' |
			e4. cis8 a cis |
			h8.\prall[ a16] h4 r8 e |
			e4\melisma dis8\melismaEnd fis16[ e] dis[ cis] h[ a] |
			a4 gis h~ |
			h8[ cis] a gis fis e |
			dis4 e e'~ |
			e8.[ dis32 cis] h8 a gis fis |
			gis a32[ h cis16] \appoggiatura cis8 h4. a8 |
			\appoggiatura a8 gis a32[ h cis16] \appoggiatura cis8 h4. a8 |
			\appoggiatura a8 gis a32[ h cis16] \appoggiatura cis8 h4. a8 |
			e'8.[\melisma dis32 cis] h8\melismaEnd a gis fis |
			gis e' e,4 fis\prall |
			e r r |
			R2.*5 |
			r4 r h' |
			h4. gis8 e d' |
			d4 cis a8.[ h32 cis] |
			h4. gis8 e d |
			d4 cis r8 e' |
			e4. cis8 a g |
			g4 fis8 ais16[ h] h4~ |
			h8 fis'~ fis16[ e dis cis] h8 a |
			a4\prall gis d'~ |
			d8.\prall[ cis32 d] e,8 gis h d |
			cis4\prall h d~ |
			d8.[ cis32 d] e,8 gis h d |
			\appoggiatura d cis d32[ e fis16] \appoggiatura fis8 e4. d8 |
			\appoggiatura d cis d32[ e fis16] \appoggiatura fis8 e4. d8 |
			\appoggiatura d cis d32[ e fis16] \appoggiatura fis8 e4. d8 |
			\times 2/3 {cis16[ e d]} \times 2/3 {cis[ h a]} h8 a4\melisma gis8\melismaEnd |
			d2\prall d'4~ |
			d8.[ e32 fis] e8 d cis h |
			a'8.[\melisma gis32 fis] e8\melismaEnd d cis h |
			\times 2/3 {cis16[ e d]} \times 2/3 {cis[ h a]} e4 h'\prall |
			a r r |
			R2.*6 |
			r4 r8 cis cis16 fis, fis8 r cis' |
			d16[ cis] d8 r4 e8 h r e |
			cis16[ h] cis8 r fis h,16[ a] h8 r cis |
			\appoggiatura h4 a2 gis4 r8 cis |
			cis fis, fis cis' d16[ cis] d8 r dis |
			e h r eis fis[ e] e d |
			d[ cis] cis[ his] his2 |
			cis cis4 cis |
			cis1~ |
			cis8.[ gis16] dis'8. cis16 cis4 
		}

	\bar "|."
	}

}
