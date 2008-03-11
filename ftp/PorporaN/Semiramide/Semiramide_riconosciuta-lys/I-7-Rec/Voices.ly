\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\Mir r8 a d cis d8. d16 d8 a |
			a a16 a a8 h c8. c16 c8 d |
			h4 r cis r8 cis16 d |
			a4 r8 gis h h r h |
			h cis d cis cis8. a16 cis8 e |
			dis4 fis8 e16 fis fis8 a, r h |
			gis gis r16 h d cis cis8 cis r16 cis e a, |
			d8 d r4 fis8 e16 fis d8 cis |
			a a r4 r2 |
		}

	\bar "|."
	}

}
