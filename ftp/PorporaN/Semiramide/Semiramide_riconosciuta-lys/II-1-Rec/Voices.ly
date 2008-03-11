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
			\Sib r8 c a a r16 f a g a8 a |
			a c h h16 c g8 g r e |
			g f g g g g16 a b8 a |
			a4 a r8 a16 a a8 e16 d |
			e8 e r e e f g g16 a |
			b8 b b a f f r d |
			f e f f16 a f8. f16 e8 d |
			gis4 gis h8 a gis gis16 a |
			a4 a8 r a c a g16 a |
			f4 d'8 gis,16 a e8 e \Irc r e |
			e h d c g4 r16 cis e a, |
			d8 d r16 d d a h8 h r16 g' g d |
			f8 f g d e e \Sib r16 c' c g |
			b8 b b c16 g a8 a \Irc r c, |
			c f f c16 d b8 b \Sib f'4 |
			f8 f b a b b r b |
			b f as g es es r g |
			b8. b16 b8 es, as as \Irc es as, |
			\Sib r es' as g as as r c |
			c g b as f f r f |
			as g as as as c as g16 f |
			h4 d8 f,16 g es8 es r es |
			g4 g2 g8 c |
			fis,4 r a8 a16 g a8 a |
			a b c c16 b g8 g \Irc r d |
			b b \Sib r d g g16 b a8 a |
			a a a e16 f d8 d r d |
			f e f f16 g a4 a8 a16 g |
			g8 g r g g a b b16 c |
			a4 r8 c, f e f f |
			a a16 g a4 a8 a16 a h8 c |
			g g \Irc d c d d \Sib g d |
			e e r g g c fis, fis16 g |
			a8 a16 a a8 d, g g r4 |
			h8 h16 h h4 r16 h a g cis8 cis16 d |
			a8 a \Irc r16 a, d cis d8. fis16 e4 |
			\Sib h'8 e, r gis h8. h16 h cis d cis |
			a8 a r4 
		}

	\bar "|."
	}

}
