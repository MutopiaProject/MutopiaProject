\new Staff  {
	\time 12/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Corni da caccia"
	\set Staff.midiInstrument="french horn"
	\transposition d
	\key c \major
	\clef treble
	\relative c'' {
		\partial 4. r4 r8 |
		R1. |
		c |
		d4 c8 r4 r8 r2. |
		g1.~ |
		g4. r4 r8 e'4. r4 r8 |
		e4. r4 r8 e4. r4 r8 |
		r4 r8 r r d e f g a h4\prall |
		c8 c, f e d4\prall c4. r4 r8 |
		R1.*10 |
		r2. r4 r8 d4.~ |
		d1. |
		g4.~ g8 a4\prall g4 e8 d4. |
		d4. r4 r8 r2. |
		R1. |
		r2. r4 r8 g4.~ |
		g1.~ |
		g~ |
		g4. r4 r8 r2. |
		r2. r4 r8 g4.~ |
		g1.~ |
		g4. r4 r8 r2. |
		R1. |
		r4 r8 g,4.~ g2.~ |
		g c4. r4 r8 |
		R1. |
		r2. e4. r4 r8 |
		e4. r4 r8 e4. r4 r8 |
		r2. e~ |
		e4. e8 f4\prall e8 f g a h4 |
		c8 c, f e d4\prall c4. r4 r8 \bar "||" |
		\key a \minor
		\time 3/8
		R4.*28 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
