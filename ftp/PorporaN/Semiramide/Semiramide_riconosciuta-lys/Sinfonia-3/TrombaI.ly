\new Staff  {
	\time 12/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 140 
	\set Staff.instrumentName="Trombe"
	\set Staff.midiInstrument="trumpet"
	\key g \major
	\clef treble
	\relative c'' {
		\partial 8 r8 |
		r2. fis4. e |
		r4 r8 fis4. e r4 r8 |
		r2. fis4. e |
		r4 r8 fis4. e r4 r8 |
		r2. a4. r4 r8 |
		r2. g4. r4 r8 |
		fis4. r4 r8 fis4. r4 r8 |
		fis4. e d r4 r8 |
		r2. a'4. r4 r8 |
		r2. g4. r4 r8 |
		fis4. r4 r8 fis4. r4 r8 |
		fis4. e d r4 r8 |
		d8 a fis' e a, g' fis4. e |
		fis8 e d a' g fis \appoggiatura fis4 e2. |
		d8 a fis' e a, g' fis4. e |
		fis8 e d a' g fis \appoggiatura fis4 e2. |
		a2.~ a\prall |
		g~ g\prall |
		fis4. e fis e |
		fis8 d a e'4.\prall d r4 r8 |
		a'2.~ a\prall |
		g~ g\prall |
		fis4. e fis e |
		fis8 d a e'4.\prall d\fermata r4 r8 |
	\bar "|."
	}

}
