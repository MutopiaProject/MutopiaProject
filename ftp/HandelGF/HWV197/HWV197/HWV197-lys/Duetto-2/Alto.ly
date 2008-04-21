\new Staff  {
	\set Staff.instrumentName="Alto"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			r4 d8. fis16 e8 e a fis16[ e] |
			d8 d g8. g16 g[ e cis] g' g[ e a,] g' |
			g8 fis4 e16 d cis4 a'~ |
			a gis~ gis8 gis fis4 |
			e h'~ h8 a d,4~ |
			d cis8 h a4\melisma a'~ |
			a\melismaEnd gis8 h e,[ a a gis] |
			a2~ a8 g[~ g16 fis] e[ d] |
			cis4 d8. fis16 e8 e a fis16[ e] |
			d8 d g g g16[ e cis] g' g[ e a,] g' |
			g8 fis4 e16 d cis4 a'~ |
			a g8 fis e4. g8~ |
			g16[ a] fis[ e] fis8[ e16 d] d4 d'~ |
			d cis8 h a2~ |
			a4 gis8[ fis] gis16[ e] a8 a[ gis] |
			a4 cis,8 fis fis eis gis eis16[ dis] |
			cis8 cis a' a a gis h4~ |
			h8 a cis4~ cis8 h d h |
			eis,\melisma fis4 eis8\melismaEnd fis4 r |
			r2 r4 fis8 h |
			h8 ais cis ais16[ gis] fis8 fis d d |
			d cis e4~ e16[ fis] d[ e] cis8.[ h16] |
			h8 fis'4 e16[ d] cis8 fis d' cis16[ h] |
			h8 ais fis e16[ d] cis cis d e cis8.[ h16] |
			h1 |
			R1*2 |
		}

	\bar "|."
	}

}
