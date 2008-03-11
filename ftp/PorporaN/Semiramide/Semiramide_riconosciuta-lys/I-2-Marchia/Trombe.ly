\new Staff  {
	\set Staff.instrumentName="Trombe"
	\set Staff.midiInstrument="trumpet"
	\key d \major
	\clef treble
	\relative c'' {
		\partial 4 r8 <<{fis}\\{d}>> |
		<<{fis2 e}\\{d a}>> |
		<<{d r}\\{fis, r}>> |
		R1 |
		<<{r4 e' e2}\\{r4 a, a2}>> |
		R1 |
		<<{r4 fis' fis2}\\{r4 d d2}>> |
		R1 |
		r4 r8 <<{gis a4. a8}\\{e e4. fis8}>> |
		<<{a2 gis}\\{e1}>> |
		<<{a2.}\\{e2.}>> 
		r4
		R1*2 |
		<<{d2 e}\\{a, e'}>> |
		<<{fis4. g8 a2~}\\{d,4. e8 fis2~}>> |
		<<{a4. h8 g4. fis8}\\{fis4. d8 e4. d8}>> |
		<<{e2.}\\{a,}>> r8 <<{e'8}\\{a,}>> |
		<<{e'4. e8 fis4. g8}\\{a,4. a8 d4. e8}>> |
		<<{a2 fis4. g8}\\{fis4. e8 d4. d8}>> |
		<<{fis2 e}\\{d a}>> |
		<<{d2.}\\{fis,}>> 
	\bar ":|"
	}

}
