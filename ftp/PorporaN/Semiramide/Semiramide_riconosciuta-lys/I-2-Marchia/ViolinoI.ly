\new Staff  {
	\set Staff.instrumentName=\markup{\column{"Violino I"\line{"Oboe I"}}}
	\set Staff.midiInstrument="violin"
	\key d \major
	\clef treble
	\relative c''' { 	
		\partial 4 r8 a |
		a4. a8 g4.\prall fis16 g |
		fis4. fis8 e4. e32 fis g16 |
		a4. h8 \appoggiatura a g4. fis8 |
		\appoggiatura fis4 e2. r8 a,32 h cis d |
		e4. e8 fis4.\prall g8 |
		\appoggiatura g4 fis2. r8 fis |
		fis4. fis8 gis4. a8 |
		gis4. fis16 e a4. d,32 cis h16 |
		cis2 h4. a8 |
		a2. \bar ":|:"
		r8 e' |
		e4. e8 fis4.\prall e16 fis |
		\appoggiatura fis4 g2. r8 g32 fis e16 |
		d4. d8 e4.\prall d16 e |
		fis4. g8 a2~ |
		a4. h8 \appoggiatura a g4. fis8 |
		e2. r8 e |
		e4. e8 fis4.\prall e32 fis g16 |
		a4. a,32 h cis16 d4. g32 fis e16 |
		fis2 e4.\prall d8 |
		d2.
	\bar ":|"
	}

}
