\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 50
	\set Staff.instrumentName="Soprano"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*2 |
			r2 r4 a8. cis16 |
			h8 h e8. cis16 a8 a d8. d16 |
			d[ h gis] d' d[ h e,] d' d8 cis4 h16 a |
			gis4 e'2 d8 cis |
			h4. d8 d16[ e] cis[ h] cis8[ h16 a] |
			a8 g[~ g16 fis] e[ d] cis4 r |
			r d'2 cis4~ |
			cis8 h h4 a e'~ |
			e8 d g2 fis8 e |
			d2~ d4 cis8 e |
			a,\melisma d4\melismaEnd cis8~ cis4 h8 a |
			gis4 e'2 dis8 e16[ fis] |
			h,4. h8 cis8. d16 cis8[ h16 a] |
			a2 r |
			r4 cis,8 fis fis eis gis eis16[ dis] |
			cis8 cis a' a a gis h4~ |
			h16[ cis] a[ h] gis8.[ fis16] fis4 fis8 h |
			h ais cis ais16[ gis] fis8 fis d' d |
			d cis e4~ e8 d fis4~ |
			fis8 e g e ais,[\melisma h16 cis] ais8.[ h16]\melismaEnd |
			h8 d4 cis16[ h] ais8 fis fis' e16[ d] |
			d8 cis d cis16[ h] ais ais h cis ais8.[ h16] |
			h1 |
			R1*2 |
		}

	\bar "|."
	}

}
