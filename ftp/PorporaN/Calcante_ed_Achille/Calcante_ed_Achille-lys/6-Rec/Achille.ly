\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Achille"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			r4 r8 g c c c h |
			c c r e c c d e |
			d4 d8 a16 h g8 g r h |
			d d r f h, h h c |
			c r16 e e8 h h c d d16 c |
			a8. a16 a4 
			\Calc
			r8 e, a a |
			r c c g g g16 a b8 a |
			f4
			\Ach
			r8 f'' f c r4 |
			\Calc
			r4 r8 d, d a a b |
			c c d a r4 
			\Ach
			r8 g' |
			cis4 cis r8 e cis d |
			d a r4 
			\Calc
			r4 r8 g, |
			b b r d gis,8. gis16 gis8 a |
			a4 a, r a'8 d,16 e |
			fis4 r8 fis fis g a g |
			a a r d d a c h |
			g g r4 e'8 h16 h d8 c |
			a a 
			\Ach
			r16 e'' dis e e8 h r4 |
			R1\fermata |
		}
	\bar "|."
	}
}
