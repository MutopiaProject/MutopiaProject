\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 40
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R1*2 |
			r4 d8 d,32[ e f g] c,8 c' b b,32[ c d e] |
			a,8 a' g g,32[ a b c] f,8 f' e d |
			a' a, b b a4 c'16[ a] f[ c'] |
			d[ e,] f h, c8. c16 f,4 f'16[ g] a[ h] |
			c8 c, d16[ e] f[ g] a8 a, b16[ c] d[ e] |
			f8 f, g16[ a] b[ c]d8 d' cis16[\melisma h a g] |
			f[ e]\melismaEnd d b' a,8. a16 d4 d'8 f,, |
			g e'' e g,, a f'' f a,, |
			b g''16[ g] e[ d] cis[ h] a[ cis] d[ g,] a8 a, | %b instead of h
			d4 d'8 f,, g b a8. a16 |
			d,4 r r2 |
			R1 |
			r2 r4 a''8 gis |
			a e c' h c16[ h] a8 a g |
			f e a c,16[ d] e[\melisma f32 g a h c d] e8\melismaEnd gis, |
			a4~ a16[ c h] a gis4 c16[ h] c[ e,] |
			f8 f,16 a' d[ c] d[ a] h[ a] g8 c16[ h] c[ e,] |
			d[ c'] h c g,8. g16 c8 c' gis4 |
			a8 c dis,4 e8 e fis16[ e] fis8 |
			gis16[ fis]e8 h' e, c'16[gis] a d, e8 e, |
			a[\melisma a']~ a16.[ h32 c a h c] f,8[ h]~ h16.[ c32 d h c d] |
			gis,4\melismaEnd a8 c, d a' e,8. e16 |
			a4
		}

	\bar "|."
	}

}
