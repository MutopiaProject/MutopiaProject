\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Calcante"
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			a2 d,4 d'~ |
			d a r8 a a b |
			b4 b8 c16 d d8 gis, gis gis16 a |
			h8. h16 d8 c a4 
			\Ach
			r8 e'' |
			e a, a gis a4 c |
			h h dis8 dis16 dis e8 fis |
			a, a c c16 h g4
			\Calc
			h,8 ais16 h |
			h8 fis r4 r8 h h h |
			h2 cis, |
			r8 cis' gis a fis fis16 fis 
			\Ach cis''8. d16 |
			h8 h16 h d8 cis a4 r |
			cis his8 cis cis gis r4 |
			cis cis8 e e h16 h d8 cis |
			a4 r8 e' e a, a h |
			cis cis r e cis8. cis16 cis8 d |
			d a r a d4 r8 e |
			c8. c16 d8 a h h r16 h d g, |
			c8 c r e c c c h |
			g g r4 r2\fermata |
		}
	\bar "|."
	}
}
