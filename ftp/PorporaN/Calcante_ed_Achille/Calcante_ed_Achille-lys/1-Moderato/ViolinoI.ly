\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 60 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key g \major
	\clef treble
	\relative c'' {
		d4~ d16 g, e' g, \appoggiatura g8 fis8. g32 a g16 d' g d |
		e g, d' g, \appoggiatura d'8 c8.\trill h32 c \appoggiatura c8 h4 r |
		d~ d16 g, d' h g8 g'4 fis8\prall |
		g4~ g16 d h' d, \appoggiatura d8 cis8. d32 e d4~ |
		d16 h e h cis4\prall d~ d16 a e' a, |
		fis' a, cis a d a e' a, fis' d g d a' d, h' d, |
		c'4~ c16 d, a d b'4. a8 |
		g16 d fis d g d a' d, b'2 |
		a16 a, cis a d a e' a, f'8 a, d'4~ |
		d16 d, fis d g d a' d, h'8 d c h |
		c16 c, e c a' d, c' d, h' d, g d e g, d' g, |
		e' g, d' g, \appoggiatura d'8 c8.\trill h32 c h a g8.~ g4 |
		g8 g'4 fis8\prall g2~ |
		g16 d fis d g d a' d, h' d, g d a' d, h' d, |
		c'2~ c\fermata |

	\bar "|."
	}
}
