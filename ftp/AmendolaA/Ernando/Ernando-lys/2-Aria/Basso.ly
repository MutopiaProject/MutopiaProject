\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.midiInstrument="oboe"
	\key f \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R2.*4 |
			r4 c f, |
			g8 c, c'4. b8 |
			a4 f a8. h16 |
			c8 c, f4. g8 |
			e16[\melisma g f g] e[ f d e] c[ d b c] |
			a[ c' b c] a[ b g a] f[ g e f] |
			d8[ e16 f] g8[ a16 h] c8\melismaEnd e, |
			f a g,4. g8 |
			c4 r r |
			R2. |
			r4 c' g |
			a8 f c'4 g |
			a8 f d'4 a |
			b8 g d'4. a8 |
			b8[\melisma g16 a] b[ a b c] d8[ d,] |
			es[ es16 f] g[ f g a] b8[ b,] |
			c[ c16 d]e[ d e fis] g[fis g a] |
			b[ a b c] d8[ a b fis] |
			g8\melismaEnd b, c es d8. d16 |
			g,4 g'4. f8 |
			e c c'4. b8 |
			a8 g f4. e8 |
			d8 f g4. b8 |
			e,[\melisma c c' g a b] |
			a16[ c b c] a[ b g a] f[ g e f] |
			d8[ f16 e] f8[ a16 g] a8\melismaEnd b |
			c f, c4. c8 |
			f,4 c''4. b8 |
			a f b,4 c |
			f, r r |
			R2.*2 |
			r4 r a'8. g16 |
			f8 d a'4 d |
			cis a d8. c16 |
			b8. b16 b4 c8. b16 |
			a[\melisma c b c] a[ b g a] f[ g e f] |
			d[ d' c d] b[ c a b] g[ a f g] |
			e[ g f g] e[ f d e] cis[ d h cis] | %h instead of b
			a2\melismaEnd d'8. f,16 |
			g8 b a,4. a8 |
			d4 r r |
			R2. |
			r4 a'4. h8 |
			gis a h4 c |
			h e, a8. h16 |
			f4 f g8. f16 |
			e2 f8. e16 |
			d4 d e8. d16 |
			c16[\melisma e' d e] c[ d h c] a[ h g a] | %h instead of b
			f[ f' e f] d[ e c d] h[ c a h] |
			gis[ h a h ] e,[ gis fis gis] a[ h c d] | %fis instead of d
			e[ f e d] c[ d c h] a[ h a gis] |
			a8[ a,]\melismaEnd a'4. c,8 |
			d a' e,4. e8 |
			a4 a' e |
			a,2 r4 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
		}

	\bar "|."
	}

}
