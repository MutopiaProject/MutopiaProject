\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Semiramide}
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			\partial 8 r8 |
			R1*7 |
			r4 r8 fis16[ g] a8 a a a |
			d16[ cis32 h] a8 a a h a4 d8 |
			a g16 fis g8 fis16[ e] fis[ g] a4 h8 |
			a g16 fis g8 fis16[ e] fis[ e] d8 r4 |
			R1 |
			r2 r4 fis |
			r a a8. e16 e4 |
			h'8. e,16 e8 d' cis16[ h] a8 r d |
			cis16[ h] a8 r4 e8 fis16 e a8 g |
			fis16[ e] fis8 fis4~ fis8 gis16 fis h8 a |
			gis16[ fis] gis8 e'4 fis,8 d' e, cis' |
			d, h' cis, a' h,4 gis'\prall |
			a8 a a a a cis16 h a8 a |
			a8.[\prall gis32 a] h8.[\prall a32 h] cis16[\melisma e d cis] h[ a gis fis] |
			e8\melismaEnd d' cis h16[ a] h4 gis\prall |
			a8 e'16[ d] cis[ h] a8 e4 h'\prall |
			a r r2 |
			R1 |
			r4 r8 fis16[ g] a8 a a a |
			d16[ cis32 h] a8 a a c h4 c8 |
			h a16 g a8 g16[ fis] g[ a] h4 c8 |
			h a16 g a8 g16[ fis] g[ fis] e8 g4 |
			r a a8. d,16 d4 |
			d'8. a16 a8 d h4 a8 d |
			\appoggiatura a4 g2 fis4 r |
			a8 e16 e e8 a fis16[ e] d8 r a' |
			a e e a fis a d a |
			fis a d a fis8.[\prall e32 fis] g8.[\prall fis32 g] |
			a8[\melisma g16 fis] g[ a h cis] d8\melismaEnd cis16[ h] a8 g |
			fis4 e\prall fis8 d' h fis |
			g4 a h8 d h fis |
			g4 a d, r |
			R1*3 |
			r2 r4 \bar "||" r8 d16[ e] |
			fis8 fis fis fis h16[ a32 g] fis4 h8 |
			g fis h4. ais16 h cis8 e, |
			d fis h4. a16 g fis[ e]d[ cis] |
			d[ cis] h8 r fis' h h h h |
			h16[ ais] h8 r fis h h h h |
			h16[ ais] h4. d16[ cis] h4 h8 |
			h16[ a] g8 g fis eis[\melisma gis] gis8.[\prall fis32 eis] |
			fis8[ a] a8.[\prall gis32 fis] gis8[ h] h8.[\prall a32 gis] |
			a8\melismaEnd cis16[ h] a[ gis] fis8 gis4 eis |
			fis8 d' cis fis, fis2 |
			gis\prall fis4 r |
		}

	\bar "|."
	}

}
