\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80
	%\set Staff.instrumentName="Soprano"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\Sem
			r4 fis8 a4 r8 d a16 g |
			a8 a r a fis8. fis16 g8 a |
			a d, r16 d fis e fis8 fis r fis16 g |
			a8 g a a a h c c16 h |
			h8 h r16 h cis d a8 a 
			\Sib
			a g16 a |
			fis8 fis16 a e8 e r4 cis'8 a16 a |
			a8 gis a a 
			\Sem
			a8. e16 e8 cis' |
			a a r4 a8 a a e16 fis |
			d4 r8 h' g g r4 |
			h8 e, r4 g8 a h h16 a |
			h8 h r4 h8 d g, g16 h |
			a8 a 
			\Sib
			r8 d, fis e fis fis |
			fis fis16 g a8 g a4 a |
			a8 d a a16 h c8 c c c16 h |
			h8 h r4 h8 h h fis16 e |
			fis8 fis r4 fis8 fis16 g a8 a |
			a h h fis16 a g8 g r16 g fis e |
			ais8 ais r16 cis h cis ais8 ais16 h fis8 fis |
			r4 r8 d g8. g16 g8 fis |
			g8 g16 g g8 a h a h h |
			h d f, f16 g e4 r8 e |
			g f g g g c g g16 a |
			b8. b16 b8 a a a r16 a b c |
			f,8. f16 f8 g a a16 g a8 a |
			a8 a a h16 c h8 h h c |
			g g16 g \Sem g4 e8 e d' g, |
			r4 r8 e a gis a a |
			a e16 f g8 f d d r16 d f e |
			f8 f r4 a8 d, d' a16 h |
			gis8. h16 gis8 a e e \Sib r8 e |
			a a r4 r8 a a e |
			fis fis r fis h4 r8 h |
			g4 \Sem r8 g g a h a |
			h h d f,16 g e8 e \Sib r e |
			g g g f g g r c |
			c g g a b b16 b b8 a |
			a4 a \Sem a8 a16 a b8 c |
			f,8. c16 f8 f r f a a |
			r a c f, b8. b16 b8 f |
			f g as b16 f g8 g r4 |
			a8 a16 a c8 f, b b \Sib r16 f b a |
			b4 b8 b b f16 es f4 |
			f8 f16 g as8 as as as16 as b8 f |
			g4 r8 es g f g g |
			g as b b16 as b8 b r b |
			b c c g g g16 as b8 b |
			b b16 b c8 g as as \Sem r c |
			as8. as16 b8 c c f, r c |
			f e f f f g as as16 g |
			as4 r16 c h c g8 g \Sib h h |
			\Sem r8 g g as f f16 f as8 g |
			es es r4 r8 es g g |
			g g16 g g8 c fis, fis r4 |
			a8 a16 b c8 b b b b a16 b |
			a8 a r4 \Sib b b8 d |
			d g, \Sem b4 a8 a r4 |
			a8 a a e16 f d4 \Sib r16 a' gis a |
			e4 r a8 a16 a d8 a |
			h h \Sem gis gis16 a h8 h h h16 c |
			a8 a r4 a8 a16 a h8 c |
			c f, r4 f8 g a a16 g |
			g4 g h8 d f, f16 g |
			e4 r8 c' h c g g |
			\Sib g c g g16 f g8 g \Sem r e16 f |
			g8 g g c c fis, r fis16 g |
			a4 r8 c16 h g8 g r d |
			g fis g g g a h h16 a |
			a8 a r4 a8 e16 fis g8 g16 a |
			fis8 fis r a a d,16 d fis8 e |
			fis fis r fis a g a a |
			a h c h h h r h16 h |
			h8 fis r fis16 a a8 dis, r fis16 g |
			a8 a r c h h h h16 fis |
			g8 g r h e,8. e16 e8 fis |
			g4 g h8 a g fis16 e |
			ais8 ais r cis ais8. ais16 ais8 h |
			h4 r16 h ais h fis8 fis \Sib fis4 |
			h8 fis h h \Sem fis4 r |
			gis8 gis16 cis cis8 gis16 gis h8. h16 h8 a |
			fis fis r16 fis gis a gis8 gis r h |
			gis8. gis16 gis8 a a a16 a gis8 a |
			e e \Sib r e16 e a8 a16 gis a8 a |
			a a a e16 fis g8 g16 g a8 e |
			fis fis \Sem r a a fis d4 |
			r8 fis fis g a g a a |
			a h c c16 h g8 g \Sib r d |
			g fis g g r h16 d d8 g, |
			g g g d16 e f8 f g g16 d |
			e8 e \Sem r16 g g c g8 g16 f g8 g |
			g a b b16 a f8 f r4 |
			a8 a16 g a8 a a b16 c c8 f, |
			f f16 g a8 g g4 g4 |
			g8 g g d16 f e8 e r16 g c g |
			a8 a c h16 c g8 g \Sib r g |
			e e r e a gis a a |
			a a a e16 f g8 g16 g a8 e |
			f f r a f4 r |
			a8 d,16 \Sem d' gis,8 gis r4 h8 gis16 a |
			e8 e r4 
		}

	\bar "|."
	}

}
