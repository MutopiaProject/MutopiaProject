\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.midiInstrument="oboe"
	\key g \minor
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R2.*15 |
			r8 b a g f es |
			d4 es f |
			b, r r |
			R2.*6 |
			r8 b' a g f es |
			d4 es f |
			b, b' r8 c |
			d[ c] b4 r8 c |
			d[\melisma c d b g b] |
			c[ b c a f a] |
			b[ a b g e g] |
			a4\melismaEnd f r |
			d'8 c b a g f |
			e4 f2 |
			g4 a2 |
			b8[a] b2 |
			a,4 b c |
			f, r r |
			R2.*6 |
			r8 c' d e f g |
			a4 b c |
			f, r r |
			R2. |
			r8 f g a b c |
			d4 es f |
			b, r r |
			r r r8 c |
			d4\melisma b8[ c d es] |
			f4 f, a |
			b g8[ a b c] |
			d4 d, f |
			g es8[f g a] |
			b[ a b c d b] |
			es[ d c b a g] |
			a4\melismaEnd f r |
			b8 b b b b b |
			b2.~\melisma |
			b8[ c b a b g] |
			c2.~ |
			c8[d c b c a] |
			d2.~ |
			d8[es d c d b] |
			es2.~ |
			es8[f es d es c] |
			d[ es d c d b] |
			c[ d c b c a] |
			b[ c b a b g] |
			a4\melismaEnd f r |
			des' des2 |
			c8[\melisma des c b] a4\melismaEnd | %des instead of d
			b es, f |
			b, r r |
			R2.*13 |
			r4 r b' |
			d2 es4 |
			d c2 |
			b4 g8[ a b c] |
			d4 d, d' |
			b\melisma g d |
			g d b |
			g g'8[ fis g a] |
			b[ a g a b c] |
			d4\melismaEnd d, r |
			\time 4/4
			\tempo 4=60
			es'4. r8 d4. c8 |
			h8. h16 c8 d es16[ d]c4. |
			f,4. f8 d'8. c16 b8 c |
			a16[ g] f4. d'4. b8 |
			c,4 c' b, b' |
			a8.[\melisma b16 a8. b16] a8[ f] d[ a] |
			b[ b' g e] a,[ a' f d] |
			b'4\melismaEnd d8 d, g b a, cis |
			d4 r r2\override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "Da capo" } |
		}

	\bar "|."
	}

}
