\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Violini"
	\set Staff.midiInstrument="violin"
	\key f \major
	\clef treble
	\relative c'' {
		a4 f' e |
		d\prall cis d |
		a\prall g' f |
		\appoggiatura f e2\prall d4 |
		cis8. d16 d4.\prall cis16 d |
		e8 a, f' a, g' a, |
		f'8.\prall e32 f g4 a |
		\appoggiatura d, cis2 d4 |
		\appoggiatura d cis2\prall a'4 |
		g8.\prall f16 e8.\prall d16 cis8.\prall d16 |
		cis8. d16 d4.\prall cis16 d |
		e4 a,2 \bar":|:" |
		f'16 g a8 d,4 a |
		b g'2 |
		g8.\prall f16 e8.\prall d16 c8.\prall b16 |
		\appoggiatura b4 a2 d4 |
		\appoggiatura c h2 g'4 |
		\appoggiatura d cis2 a'4 |
		d,8.\prall cis16 d8. e16 f8. g16 |
		a4 a, a |
		d8.\prall cis16 d8. e16 f8. g16 |
		a4 a,8. cis16 d4~ |
		d8 g32 f e16 \appoggiatura f8 e4. d8 |
		d2. |

	\bar ":|"
	}

}
