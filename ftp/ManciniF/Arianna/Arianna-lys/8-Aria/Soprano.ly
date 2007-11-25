\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 40 
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			R1*2 |
			d2~ d8 es16 d es8 g |
			h, c r c c2~ |
			c8 d16.[ c32] d8\melisma es16\melismaEnd f a,8 b r d |
			d cis g e' f4. es16[ d] |
			es[ h] c[ a] h8. c16 c4 r |
			r2 es8 c16 b as8 es'16[ g,] |
			fis8 fis r a d b16[ a] g8 d'16[ f,] |
			e8 e r c' h f' e b |
			a[\melisma es'] d[ as] g16[ a32 g] c8~ c\melismaEnd b16[ a] |
			b[ fis]g[ c] b8\melisma a16\melismaEnd g g4 r8 es'16.[ d32] |
			cis8 f16[ d]h8 es16[ c] a8 b r g |
			as es'16[ as,] as8 g es'16[ fis, g] es' b8\melisma a16\melismaEnd g |
			g4 r r2 |
			r4 \bar "||" r8 d' cis d e g, |
			g f b4. d16 c b8 b |
			b a r16 c des c des[ c] b c a8. b16 |
			b4 r8 d e f h, f' |
			f es c4. es16 d c8 c |
			c b~ b16 b a g f16[ a] d e cis8. d16 |
			d4 d4. c16 h c8 fis |
			g b,16 a b8 e f a,16 g a8 d16[ c] |
			b[ g'] f e f8\melisma e16\melismaEnd d d b a g f8[ e16] d |
			d4 r r2 |
		}

	\bar "|."
	}

}
