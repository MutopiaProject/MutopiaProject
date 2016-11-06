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
			\Sib fis8 h h fis16 g g4 r8 e |
			g fis g g g a h h16 a |
			a8 a r a16 a a8 e16 g fis8 fis |
			a a16 a a8 d gis, gis r16 gis h e, |
			a8 a \Irc e e cis cis16 cis \Sib r8 e |
			a a \Irc cis, e h h \Sib r gis' |
			h4 \Irc e,8 h16 a h8 h r h |
			d d d cis a a \Sib r16 e' a gis |
			a8 a a a16 e fis4 \Irc d8 e16 fis |
			h,8 cis16 d a8 a \Sib r e' a8. a16 |
			fis8 fis r16 fis fis fis h8 ais h h |
			h h h fis16 a g4 r |
			a8 a16 g a8 a16 d d8 a c h |
			g4 \Irc h,8 c d d16 c d8 d |
			r d d e f f16 f f8 e |
			e e e h16 d c8 c r a |
			c c r e dis8. dis16 dis8 e |
			h h \Sib h' a16 h g8 g r4 |
			g8 a h h16 c g4 \Irc r8 c, |
			e4 e8 e16 f f8 f r16 f e f |
			c8 c \Sib c'8 f, r f16 e f8 f |
			r e e e a gis a a |
			r a a b g8. g16 g8 f |
			d d \Irc r a d d \Sib r f16 g |
			a8 a16 g g8 g g g16 c c8 g |
			g a b b16 a f4 \Irc c8 a |
			\Sib r a'16 g a8 a r a16 c c8 f,16 a |
			g8 g h h r d f, f16 g |
			e8 e \Irc r g, c8. e16 c8 c |
			\Sib e f g g16 f g8 g r16 g g c |
			c8 g b b16 a a8 a r16 a b c |
			f,8 f16 e f8 f f g es es16 f |
			d8 d r4 b'8 b16 a b8 b |
			r8 b16 b b8 f16 es f8 f r f |
			as as as b g4 r8 es |
			g f g g r g a b |
			a a r16 c b c a8 a r b |
			f f \Irc f c16 d b8 b \Sib b' f16 g |
			es8 es r4 r8 d g g |
			g a h c16 d d8 f, r f |
			f g as as r as as g |
			es es r16 g c g as8 as16 c g8 g |
			\Irc g, g16 g c8 h c c r es |
			d d d es c4 r |
			a d8 cis d4 \Sib a' |
			a8 b c b g g r4 |
			g8. d16 d4 r8 d g g |
			g a b b16 a a8 a r a |
			a e g f d4 r |
			f f8 a g g r g16 c |
			g8 g16 f g8 g16 g b8. b16 b8 a |
			f f r4 \Irc c8 f f c16 d |
			b4 r d8 d r e16 f |
			f8 c r4 r2 |
		}

	\bar "|."
	}

}
