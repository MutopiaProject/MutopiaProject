\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\Sem e8 e a a16 gis a8 a a a16 b |
			g8 g r4 g8 g16 g a8 e |
			f f r4 a c8 b |
			g4 r8 d g g r h16 d |
			d8 f, r f16 g e4 r16 c e d |
			e8 e r e16 fis gis8 gis r h16 e, |
			a8 a r16 a g a f8 f r16 f e d |
			gis8 gis16 a e8 e r4 h'8 fis16 fis |
			r8 fis a g a a c a16 g |
			e8 e \Mir r16 h' e h c8 c \Sem r8 fis, |
			a a r a c c c h |
			g4 \Irc h,8 h \Sem r8 d g g |
			g a h h16 a h8 h r16 h cis d |
			a8 a r4 \Mir r8 a d a |
			h h \Sem r16 gis gis a h8 a h h |
			h a gis fis16 e a8 a r e |
			a a r a a b g g |
			b b16 b b8 a f f r c |
			g'8. g16 b8 a a a r4 |
			f8 f16 g a8 g a a r4 |
			a8 c a g16 f h8 h r16 d h c |
			g8 g r4 \Irc g8 d16 e f8 e |
			c c r4 \Mir c'8 g b b16 a |
			a8 a r c8 d d16 f c8 c |
			R1\fermata |
		}

	\bar "|."
	}

}
