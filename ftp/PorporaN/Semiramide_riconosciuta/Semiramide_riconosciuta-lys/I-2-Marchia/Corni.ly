\new Staff  {
	\time 2/2
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Corni da caccia"
	\set Staff.midiInstrument="french horn"
	\transposition d
	\key c \major
	\clef treble
	\relative c'' {
		\partial 4 r8 <<{e}\\{c}>> |
		<<{e2 d}\\{c g}>> |
		<<{c r}\\{e, r}>> |
		R1 |
		<<{r4 d' d2}\\{r4 g, g2}>> |
		R1 |
		<<{r4 e' e2}\\{r4 c c2}>> |
		R1 |
		r4 r8 <<{fis g4. g8}\\{d d4. e8}>> |
		<<{g2 fis}\\{d1}>> |
		<<{g2.}\\{d}>> 
		r4 |
		R1*2 |
		<<{c2 d}\\{g, d'}>> |
		<<{e4. f8 g2~}\\{c,4. d8 e2~}>> |
		<<{g4. a8 f4. e8}\\{e4. f8 d4. c8}>> |
		<<{d2.}\\{g,2.}>> r8 <<{d'}\\{g,}>> |
		<<{d'4. d8 e4. f8}\\{g,4. g8 c4. d8}>> |
		<<{g2 e4. a8}\\{e4. d8 c4. f8}>> |
		<<{g2 f}\\{e d}>> |
		<<{e2.}\\{c}>> 
	\bar ":|"
	}

}
