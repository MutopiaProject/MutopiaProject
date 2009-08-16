\version "2.12.1" 



affetuosodos  = {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\set Staff.instrumentName="Recorder 2"
	\set Staff.midiInstrument="recorder"
	\key bes \major
	\clef treble
	\relative c'' { 	
	
		% 1
		
		bes4 r8 bes a4 r8 a |
		g4 r8 g f4 r8 a |
		bes d16 ees f8 f c d16 ees f8 f |
		bes,8 g'16 g ees d c bes a8 c'16 bes a g f ees |
		d c bes8 r b c e16 a a( g) g( f) |
		
		% 6
		
		f e d8 r d8 e g16( c) c( bes) bes( a) |
		a( g) f8 r f e4 r8 e |
		d4 r8 d c4 r8 e |
		f16 c f bes g8.-+ f16 f8 c'16 bes a g f ees |
		d8 f16 ees d c bes aes g8 g'16 f bes,8 d |
		
		% 11
		
		ees8 ees16( g) g( ees) ees( g) g( f) d( f) f( d) d( f)  |
		f( ees) c( ees) ees( c) c( ees) ees( d) d( c) g'( f) ees( d) |
		c f f f f d32 ees f16 a, bes4 r8 a |
		g16 bes' bes bes bes g32 a bes16 d, ees8 ees' ees4~ |
		ees16 ees d ees c8. bes16 bes8 bes16 a g( f) f( e) |
				
		% 16
		
		e8 bes bes4~ bes8 bes'16 a a g g f |
		f c' c c c a32 bes c16 ees, d4 r8 d |
		c16 g' g g g ees32 f g16 bes, a a' bes c a8.-+ bes16  |
		bes8 d,16 bes f'8 f, bes4 r |
	\bar "|."
	}

}
