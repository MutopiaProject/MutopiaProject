\new Staff  {
	\time 3/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.instrumentName="Corni da Caccia"
	\set Staff.midiInstrument="french horn"
	\transposition f
	\key c \major
	\clef treble
	\relative c'' {
		\partial 8 r8 |
		R4.*6 |
		d8 g d |
		d16 e f8 e |
		d16 e f8 e |
		d8 f e |
		d f e |
		d d4 \mark \markup { \musicglyph #"scripts.segno" } |
		e8 r r |
		d r r |
		e r r |
		d r r |
		e16 f e f e f |
		e f e f e f |
		e f e f e f |
		e f e f e f |
		d4.~ |
		d\prall |
		e16 f e f e f |
		e f e f e f |
		e f e f e f |
		e f e f e f |
		d4. |
		d\prall |
		e8 e16 e e e |
		e8 c16 c c c |
		c8 c16 c c c |
		c8 r r |
		R4.*27 |
		d8 r r |
		R4. |
		d8 r r |
		R4. |
		d8 r r |
		R4.*2 |
		d8 r r |
		R4.*2 |
		g4.~ |
		g~ |
		g~ |
		g~ |
		g |
		fis |
		g8 d fis |
		g d fis |
		g d d |
		d d16 d d d |
		d8 r r |
		R4.*27 |
		e8 r r |
		R4. |
		e8 r r |
		R4. |
		e8 r r |
		e r r |
		e r r |
		R4.*2 |
		e8 r r |
		R4.*2 |
		e8 r r |
		d r r |
		e r r |
		d r r |
		e16 f e f e f |
		e f e f e f |
		e f e f e f |
		e f e f e f |
		d4.~ |
		d |
		e8 g d |
		e g d |
		e e16 e e e |
		e8 c16 c c c |
		c8 r \bar "||" r |
		R4.*31 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "Dal Segno" } |
	\bar "|."
	}

}
