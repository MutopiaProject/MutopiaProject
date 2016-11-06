\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Mirteo}
	\set Staff.midiInstrument="oboe"
	\key a \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*9 |
			r2 e8[ a] \appoggiatura e d4 |
			\appoggiatura e8 cis2 e32[ d cis16] e32[\melisma d cis16] h4\prall\melismaEnd |
			a fis'8.[\prall e32 fis] e8 a, fis'8.\prall[ e32 fis] |
			e32[ d cis16] e32[ d cis16] h4\prall a r |
			h8.[\melisma cis32 d] cis8\melismaEnd h cis16[ h] a8 r e' |
			h8.[ cis32 d] cis8 h cis16[ d] e8 e e |
			h8. cis32[ d] cis8 h cis\melisma e4 a8~ |
			a cis,4.\prall\melismaEnd h4 r |
			fis'8 fis4\prall\melisma gis8\melismaEnd a a,4 h16[ cis] |
			d8 cis4\melisma h8\melismaEnd cis16[\melisma e dis e] dis[ e dis e] |
			e,[ fis gis a h d cis h] cis[ e dis e dis e dis e] |
			e,[ fis gis a h d cis h] cis4\prall dis\prall |
			e\prall\melismaEnd fis8 h, gis'8[ fis16 e] dis[ cis] h[ a] |
			gis[ fis e8] fis4 e8 h' e h |
			e, h' e h e,4 r |
			R1 |
			e'8[ a] d,8.[\prall cis32 d] \appoggiatura d8 cis4 r |
			e32[ d cis16] e32[\melisma d cis16] h4\prall\melismaEnd a r |
			r fis'8.[\prall e32 fis] e8 a, fis'8.\prall[ e32 fis] |
			e32[ d cis16] e32[ d cis16] d4\prall cis e8 e |
			h8. cis32[ d] cis8 h cis16[ d] e8 e e |
			h8. cis32[ d] cis8 h cis16[ d e8] e e |
			h8.[\melisma cis32 d] cis8\melismaEnd h cis\melisma gis'4 a8 |
			c,2\melismaEnd h4 r |
			fis'8 fis4\prall\melisma gis8\melismaEnd a8 a,4 h16[ cis] |
			d8 cis4\melisma h8\melismaEnd cis16[\melisma a gis a h a h a] |
			d[ a gis a h a h a] e'[ a, gis a h a h a]\melismaEnd |
			fis'8\prall fis4\prall\melisma gis8\melismaEnd a a,4 d8 |
			cis4 h\prall cis16[\melisma a gis a h a h a] |
			d[ a gis a h a h a] e'[ a, gis a h a h a]\melismaEnd |
			fis'8\prall fis4\prall\melisma gis8\melismaEnd a8[ gis16 fis] e8 d |
			cis4 h\prall a8 e' a e |
			a, e' a e a,4 r |
			R1*3 |
			r2 
			\time 6/4
			\key a \minor
			e'8.[\prall\melisma d32 e] f4\melismaEnd e \appoggiatura e d2\prall c4 |
			h8[ f'] e[ a,] h[ gis] a f' e[ a,] h[ gis] |
			a8.[ gis32 a] h4 r e8.\prall[ d32 e] f4 e |
			\appoggiatura e d2 c4\melisma h8[ f']\melismaEnd e[ a,] h[ gis] |
			a[ f'] e[ a,] h[ gis] a4 e r |
			c' c4. d16[ e] c4.\prall\melisma h8\melismaEnd c4 |
			c g'16[ f e8] f16[ e d8] c4.\prall h8 c4 |
			fis4 fis2 g4\melisma g,\melismaEnd fis'~ |
			fis e dis e e e |
			\times 2/3 {e8[\melisma fis e]} \times 2/3 {d[ e d]} \times 2/3 {c[ d c]} \times 2/3 {h[c h]} \times 2/3 {a[ h a]\melismaEnd} \times 2/3 {g[ a g]} |
			fis4 dis'2\prall e4 e e |
			e2.~ e4 d8[ c h a] |
			g4 fis2\prall e r4 |
		}

	\bar "|."
	}

}
