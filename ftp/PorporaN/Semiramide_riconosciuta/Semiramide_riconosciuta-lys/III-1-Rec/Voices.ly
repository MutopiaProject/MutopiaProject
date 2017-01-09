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
			\Irc r4 r8 a d4 r8 fis |
			e e r e e e fis h,16 cis |
			d8. d16 d8 cis a a r a |
			cis h cis8. e16 dis8 dis r fis |
			dis8. dis16 dis8 e h h r4 |
			cis2 cis8 fis fis cis |
			cis d e e16 d h4 r |
			d4 d8 d h h r g' |
			g8. d16 d8 e c4 r16 e fis g |
			d8 d r4 r8 d h h |
			d d16 c d8 d16 d f8. f16 f8 e |
			c4 
		}

	\bar "|."
	}

}
