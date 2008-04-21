\new Staff  {
	\time 12/8
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 50 
	\set Staff.instrumentName="Flauto dolce"
	\set Staff.midiInstrument="recorder"
	\key f \major
	\clef treble
	\relative c'' { 	
		d8. e16 d8 a'4 d,8 d4 cis8 r4 r8 |
		f8. g16 f8 c'4 f,8 f4 e8 r r a |
		d,4 cis8 d8. f16 e8 cis4. d4 e8 |
		f e g f8. e16 d8 d4. r8 r g |
		a g b a8. g16 f8 f4. r4 r8 |
		g8. a16 g8 a,4 g'8 g4 f8 r r a |
		b4.~ b4 e,8 a4.~ a4 d,8 |
		g4.~ g8. b16 a8 f8.\trill e16 d8 r r a' |
		e f g f8. e16 d8 d4 g8 g fis c' |
		c b d, d cis a' d4 f,8 g4.\trill |
		a1. |
	\bar "||"
	}

}
