\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Tamiri}
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*5 |
			d4 fis16[ e] d[ cis] d8 a fis'16[ e] d[ cis] |
			d8 a h4\prall a\prall d\prall |
			cis\prall h\prall a\prall g\prall |
			fis8 d fis a fis d fis a |
			d16[\melisma d e d] e[ e fis e] fis[ a g fis] e8\melismaEnd d |
			cis d r4 r2 |
			fis2 e4 r |
			d2\prall cis8 e e a, |
			gis16[\melisma a h cis] d[ h a gis] a[ h cis d] e[ cis h a] |
			gis[ a h cis] d[ h a gis] a[ a h a] h[ h cis h] |
			cis[ e d cis d e fis gis] a8[ e]\melismaEnd fis cis |
			d[ h] cis a e'2~\melisma |
			e8[ d16 cis] d[ e fis gis] a8[ gis16 fis]\melismaEnd e8 d |
			cis4 h cis8 fis e a |
			cis,4 h a r |
			R1 |
			e'4 a,16[ h] cis[ d] e8 a a,16[ h] cis[ d] |
			e8 a, fis'4\prall e8 a, fis'4 |
			e r d2 |
			cis4\prall h\prall a\prall g\prall |
			fis8 d fis a fis16[\melisma d e fis] g[ a h cis] |
			d[ a h cis d e fis g] a8[ g16 fis]\melismaEnd e8 d |
			cis d r4 c2\prall |
			h4 r d2\prall |
			cis8 e e a, a16[\melisma d fis d] a[ d fis d] |
			a[ cis e cis] a[ cis e cis] a[ d fis d] a[ d fis d] |
			a[ h cis d e g fis e] fis2\prall |
			e4\prall d\prall cis\prall h\prall |
			a\prall g\prall fis8[ g]\melismaEnd a h |
			cis[ d] e fis g[ fis16 e] fis8 d |
			e4 cis d8 a' fis d |
			a4 e'\prall d r |
			R1*2 |
			r2 \bar "||"
			h4 d16[ cis] h[ ais] |
			h4 fis e'2\prall |
			d4 fis e d |
			cis h ais h8 d |
			cis fis, d'4\prall cis r |
			fis8 h,16 h h8 fis' g16[ fis]e8 r e |
			e a, a e' fis16[ e d8] r8 fis |
			e16[\melisma d cis h] e[ d cis h] cis[ e cis a] cis[ e cis a] |
			d[ cis h a] d[ cis h a] h[ d h gis] h[ d h gis] |
			cis16[ h a gis] cis[ h a gis] a[ fis gis a] h[ cis dis eis] |
			fis4\prall\melismaEnd fis8 fis fis8.[\melisma e32 d] cis8\melismaEnd h |
			a4 gis a r |
		}

	\bar "|."
	}

}
