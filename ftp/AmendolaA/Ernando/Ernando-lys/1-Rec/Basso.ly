\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Basso"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			r4 a cis,8 cis cis d |
			e e r e16 e b'4 b8 a |
			f4 f a8. a16 h8 c |
			fis,4 fis r8 a16 h c8 c16 b |
			g8 g r g g8. g16 g8 g |
			g d r d16 e f4 f8 e |
			e8 e r e a a a e |
			f f r a gis a a e |
			r2 d'8 a fis[\melisma g16 a] |
			d,8[ e16 f] g[ a h c] d8\melismaEnd a r a16 a |
			fis8 fis r a16 b c8. c16 c8 b |
			g g r16 g a h c8 c, r c' |
			c g g a b b b a |
			a4 a r8 c16^\markup{a tempo} b a8 g16 f |
			e8 c f a d,[\melisma e16 f] g[ a b d,] |
			e8[ f16 g] a[ b c e,] f8[ g16 a] b[ c d d,] |
			g8[ a16 b] c[ c, c' b] a8[ h16 c] d[ d, d' c] |
			h[ g a h] c[ e, f g] a[ h c f,] g8[ g,]\melismaEnd |
			c c'16 b a8 g16 f e8 c' b b |
			a16[\melisma b c d] f,[ g a b] d,[ e f g] b,8[ d'] |
			b16[ c d e] g,[ a b c] e,[ f g a] c,8[ c'] |
			a16[ b c d] f,[ g a b] d,[ b' d c] b[ a g f] |
			e[ c d e] f[ g a b] c[ a, b d] c4\melismaEnd |
			f, r\fermata
		}

	\bar "|."
	}

}
