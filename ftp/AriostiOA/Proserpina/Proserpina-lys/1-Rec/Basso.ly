\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="oboe"
	\key g \minor
	\clef bass
	\relative c { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			r4 r8 d g4 r16 b es c |
			fis,4 fis r8 d16 e fis8 e16 d |
			c'8 c r16 c d es a,4 r8 a |
			a b c a b b r b |
			b b a g h h r h |
			h h d, es f4 r16 f f es |
			es8 es r c' c g g as |
			b b r16 b b c a8 a r a |
			a a c a es es r es' |
			es a, a b b4.\melisma a32[ g f64 es d c] |
			b8\melismaEnd b r4 r r8 d' |
			d a fis a d,4 r16 c c h |
			h[\melisma a h g] d'[ e fis d] g8\melismaEnd g, r g'16 a | %h and e instead of b and es
			f4 f8 e e e r e'16 d |
			c[\melisma d e c] a[ h c a] fis[ d e fis] g[ a h c] | %h and e instead of b and es
			d4\melismaEnd h,8 c d2 |
			g, r8 es' g as |
			b4 r8 b b b, b c |
			des des r g g g g as |
			b b des b16 des g,,8 g r b' |
			des des des b e, e r16 g g as |
			b8 b r b b e, e f |
			f f r c'16 as f4 d8 c |
			h h r8 h16 c d4 d8 es |
			f f r f as as g f |
			h h r16 d h g c8 c r8 g16 g |
			c4 c8 g as4 r8 f |
			des'4 r16 f, e f c2 |
			f,1\fermata |
		}

	\bar "|."
	}

}
