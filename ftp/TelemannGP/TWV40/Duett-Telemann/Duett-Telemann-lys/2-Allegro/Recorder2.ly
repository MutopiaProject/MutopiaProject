\version "2.12.1" 



allegrodos  = {
	
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\set Staff.instrumentName="Recorder 2"
	\set Staff.midiInstrument="recorder"
	\key bes \major
	\clef treble
			
	\relative c''{ 	
		
		% 1
		
		bes8[ bes bes bes] bes c16 d
		ees8[ ees ees ees] ees d16 c
		d8 c bes c d ees
		d c bes c d e
		f c a' c, g' c,
		
		% 6
		
		f c g' c, e c
		f c a' c, g' c,
		f c g' c, e c
		f4 r8 ees d c
		d[ bes bes bes] bes c16 d
		
		% 11
		
		ees8 bes g' bes, f' bes,
		ees bes f' bes, d bes
		ees bes g' bes, f' bes,
		ees bes f' bes, d bes
		ees4 r r 
		
		% 16
		
		g8( f ees d c bes)
		ees( d c bes a g)
		f4. ees'8 d[ c16 bes]
		ees8 d16 c f4 f,
		bes8 f' d f bes, f'
		
		% 21
		
		c f a, f' c f
		d4 bes r
		a c a
		bes8[ f'] \times 2/3 {f([ g f)]} \times 2/3 {f( g f)}
		r8 f \times 2/3 {f([ g f)]} \times 2/3 {f( g f)} 
		
		% 26
		
		r8 f g f ees d
		ees4 c r 
		b d b
		c8 g' ees g c, g'
		d g b, g' d g
	
		
		% 31
		
		ees[ c c c] c d16 ees
		f8[ f f f] f ees16 d
		ees4 g f
		ees f d
		ees g f
		
		% 36
		
		ees f d
		ees r d
		cis r e
		a, cis a
		d f2~
		
		
		% 41
		
		f8[ e e e] e f16 g
		a4 a2~ 
		a8 g g g e c
		f4 r r 
		r8 f,[ a c] f g16 e
		
		% 46
		
		f4 r r 
		r16 f, g a bes a bes c d c d e
		f4 r8 ees d c
		d[ bes bes bes] bes c16 d
		ees8[ ees ees ees] ees d16 c
		
		% 51
		
		d4 f ees
		 d ees c
		 d f ees
		 d ees c
		 d8 bes16 d f8 d16 f d8 bes16 d
		 c8 g16 c ees8 c16 ees g8 ees16 g
		
		% 57
		
		f8 d16 f a8 f16 a f8 d16 f
		ees8 g16 f g8 ees16 d ees8 g16 f
		g8( f ees d c bes)
		ees( d c bes a g)
		f4-| a-| c-|
				
		% 62
		
		ees4. a8 bes f
		g8 c a4. bes8 bes2. 
		
	\bar "|."
	}

}
