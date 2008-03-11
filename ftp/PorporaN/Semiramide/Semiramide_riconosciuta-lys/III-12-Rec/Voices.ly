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
			\Sem a8. d,16 d4 r16 d fis e fis8 fis |
			fis g a a16 h g8 g r16 g h a |
			a8 a r4 a8 a a e16 fis |
			g8 g16 g g8 fis d d r4 |
			a'8 a16 a h8 c fis, fis r fis |
			a a a h g g \Mir h8. d16 |
			h8 a16 h g8 g \Scit cis4 e16 cis cis d |
			d8 a \Mir r8 d d a \Scit r fis' |
			d d r4 \Sem d8 h16 a gis8. a16 |
			e8 e r4
		}

	\bar "|."
	}

}
