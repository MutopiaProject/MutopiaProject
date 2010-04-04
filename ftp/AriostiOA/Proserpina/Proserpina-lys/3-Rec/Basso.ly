\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			a8 a16 a a8 a d a f a |
			a d, r16 d f d cis'8 cis r cis, |
			e e e f g g r e' |
			cis cis cis d d a r4 |
			b,8 b16 b b8 b a' a r c |
			a a g f b b r f |
			as as as g g g r16 g h d |
			f,8 f r16 d' h g c8 c r es,16 es |
			f8[\melisma as] f[ d] h\melismaEnd h r c' |
			c g r4 r8 as as c |
			as4 r8 as as as as c |
			e, e r16 g b as as8 as r16 c b c |
			des16[\melisma c b as] g[ f es f] b,8\melismaEnd des c4 |
			f, r4 b'8 b16 b b8 f |
			b b r16 f d f f8 b, r b' |
			b b b fis fis fis r a |
			a b c b b b r b |
			b b b16 f f g g8 g r es' |
			es,16[\melisma es f g] f4\melismaEnd b, r |
		}

	\bar "|."
	}

}
