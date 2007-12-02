\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 70 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key g \major
	\clef treble
	\relative c'' {
		g8. a32 h a8 g d'2~ |
		d4 c2 h8 a |
		h4 h'2 a4~ |
		a8 g16 fis g fis e d cis2~ |
		cis4 r r e |
		fis r r a, |
		r2 r4 fis' |
		g8 r16 d d8 r16 d d4 r |
		r8 c16 e c a a e e4 r |
		r2 r8 fis'16 h fis dis dis h |
		c4 r r8 r16 h h4 |
		r8 r16 a' a8 r16 fis fis4 r |
		r dis e r\fermata |
	\bar "|."
	}
}
