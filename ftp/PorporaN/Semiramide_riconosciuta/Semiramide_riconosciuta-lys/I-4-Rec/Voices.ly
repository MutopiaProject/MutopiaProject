\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 90 
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\Scit
			r8 a d d r4 d8 a |
			h4 r h8 d g, g16 fis |
			a8 a r4 a8 a16 a d8 a |
			h h r4 h8 e h h16 d |
			c8 c r16 c d e h8 h r4 |
			\Tam
			h8 e h h16 a h8 h r4 |
			e8 h r h16 ais cis8 cis r4 |
			fis8 cis e d16 cis d8 d r4 |
			r8 a d cis d d r16 d cis d |
			h8 h16 g fis8 fis
			\Scit
			r cis' a8. a16 |
			a8 gis a a r fis a gis |
			a a cis4 h8 h r4 |
			\Tam
			h8 e, e' h 
			\Scit
			r8 gis h h |
			r h d d r d16 e h8 h16 cis |
			a8 a 
			\Tam
			r e' cis cis cis d |
			d d r fis d d16 cis a8 a |
			R1\fermata |
		}

	\bar "|."
	}

}
