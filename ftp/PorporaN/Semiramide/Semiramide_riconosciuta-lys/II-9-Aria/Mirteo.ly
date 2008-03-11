\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Mirteo}
	\set Staff.midiInstrument="oboe"
	\key a \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1.*8 |
			r2. r4 r8 a4 h8 |
			cis[ h] a cis4 d8 e[ d] cis fis4 fis8 |
			e[ d] cis h[ cis] d cis[ h] a h[ cis] d |
			cis[ h a] h[ cis d] cis4.\prall\melisma e\prall |
			a8[ gis fis] \appoggiatura fis e4 d8 cis[ h]\melismaEnd a e'[ d] cis |
			cis4 h8 r4 r8 r2. |
			e e |
			e8[dis] cis h4 a8 gis[ fis] e r4 r8 |
			e'2. e |
			e8[ dis] cis h4 a8 gis8[ fis] e cis' dis4 |
			e4 h8 cis dis4\prall e h8 cis dis4\prall |
			e8[ dis] cis cis[ h] ais h[ cis h] h[ cis] h |
			h[ cis]h h[ cis]dis e4.~\prall\melisma e8[ dis cis] |
			h[ a]\melismaEnd gis a[ gis] fis e'4.~\prall e8[ dis cis] |
			h[ a gis] a[ gis fis] gis[ e' dis] cis[ h] a |
			gis4. fis e'4\prall\melisma dis16[ cis] h4\melismaEnd a8 |
			gis4. fis\prall e r4 r8 |
			R1. |
			r2. r4 r8 e4 fis8 |
			gis[ fis] e gis4 a8 h8[a] gis h4 cis8 |
			d4\prall\melisma cis16[ d] e4 d8 cis[ h]\melismaEnd a h[ cis] d |
			cis h a h[ cis] d cis[ h] a r4 r8 |
			r2. a |
			a a8[\melisma h cis] d[ e fis] |
			e[ d]\melismaEnd cis h[ cis] d cis[ h] a r4 r8 |
			a2. a |
			a8[\melisma h cis] d[ e fis] e[ d]\melismaEnd cis h[ cis] d |
			cis[ h] a r4 r8 cis4. dis\prall |
			e4 h8 cis dis4\prall e h8 cis dis4 |
			e8[ fis] e e[ fis] e e[ fis] e e[ fis] gis |
			a4.~\melisma a8[ gis fis] e[ d cis] d[ cis h] |
			a'4.~ a8[ gis fis] e[ d cis]\melismaEnd d[ cis h] |
			cis8[ e d] cis[ h] a h4. gis\prall |
			a8[ h a] a[ h] a a[ h] a a[ h] a |
			a'4.~\melisma a8[ gis fis] e[ d cis] d[ cis h] |
			cis[ a' gis] fis[ e]\melismaEnd d cis4. h |
			a r4 r8 r2. |
			R1.*3 |
			r4 r8 \bar "||" fis4 gis8 a[ gis] fis a4 h8 |
			cis[ h] a d4 d8 cis[ h] a gis[ a] h |
			a[ gis] fis gis[ a] h a[ gis] fis r4 r8 |
			r4 r8 h4 cis8 d[ cis] h d4 e8 |
			fis[ e] d g4 g8 fis[ e] d cis[ d] e |
			d[ cis] h cis[ d e] d[ cis] h h[ cis] h |
			h[ cis] h h[ cis] h h[ cis h] h[cis] dis |
			e16[\melisma fis] g4~ g8[ fis e] d[ cis d]\melismaEnd e[ d cis] |
			h4. cis d8[\melisma fis e] d[ cis h]\melismaEnd |
			fis2. cis'\prall |
			h4. r4 r8 r2. |
		}

	\bar "|."
	}

}
