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
			\Irc r4 r8 f f c es d |
			b4 \Sib r8 f' b b16 a b8 b |
			\Irc d, d16 es f8 b, e4 e |
			\Sem r8 g c h c c c c16 g |
			a4 r16 a c f, g8 g r4 |
			r8 e a a a a a e16 g |
			f4 \Irc d8 d16 cis d8 d r16 f e f |
			d8 d16 c a4 r16 a c b c8 c16 f |
			f8 c d es d d16 d e8 f |
			c c r4 \Sem a'8 a16 a b8 c |
			c f, f f16 e g8 g r4 |
			c8 g16 a b8 a f4 \Irc r8 f |
			f c c d h4 g'8 d16 e |
			c8 c r g g g c h |
			c c e d16 e c8 c r4 |
			e8 e16 e fis8 g d d \Sib r h'16 a |
			h8 h16 d d8 g, g a h h16 a |
			a4 r8 a a h g g |
			g g16 g a8 e fis4 \Irc d8 a |
			r4 r8 fis' fis cis16 cis e8 d |
			h4 r16 h d cis d8. fis16 fis8 h, |
			h cis d cis16 h e8. e16 e8 h |
			cis cis r fis fis cis \Sem ais' ais16 cis |
			ais8 ais16 ais ais8 h h fis r16 fis fis fis |
			h8 ais h h h d h h16 fis |
			gis8 gis r eis gis fis gis gis |
			gis cis gis gis16 a fis8 fis \Irc r a, |
			cis h cis cis fis cis16 cis cis8 dis |
			his4 \Sem gis' gis8 fis gis gis |
			r4 gis8 dis16 e fis8 fis r e |
			cis4 r8 h' h fis gis a |
			gis gis r cis a8. a16 a8 gis |
			e4 \Irc h4 e8 dis e e |
			r e16 h d8 d16 cis a8 a r4 |
			\Sem a'8 cis a gis16 a fis8 fis r d' |
			gis, gis r a e e r e |
			a4 r8 cis a4 r8 a |
			a e16 e e fis g fis d8 d r4 |
		}

	\bar "|."
	}

}
