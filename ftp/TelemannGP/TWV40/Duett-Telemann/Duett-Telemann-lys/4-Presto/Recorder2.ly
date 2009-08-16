\version "2.12.1" 



prestodos  = {
	\time 2/2
	\override Score.MetronomeMark #'stencil = ##f
	\set Staff.instrumentName="Recorder 2"
	\set Staff.midiInstrument="recorder"
	\key bes \major
	\clef treble
	\relative c'' { 
		
		% 1
			
		bes4 c d bes
		f' f, f' ees
		d bes c a
		bes f a f
		r2 a4.( bes16 c)
		
		% 6
		
		bes2 a
		r a4.( bes16 c)
		bes4 f a f
		f'2 bes
		a r4 g4
		
		% 11
		
		f d ees4. f8
		d2 c
		f4 bes, f' bes,
		ees d8 c d2
		g4 bes, f' bes,
		
		% 16
		
		ees4 d8 c d2
		c4 ees g bes,
		a c f, a
		bes d c a'
		bes2\fermata r
		
		% 21
		
		d,2 e
		f r4 d
		g2 a
		bes r4 a
		a2( g4) fis
		
		% 26
		
		g2( a4) bes
		\grace a4( g2.) f4
		e4.( d8) c4 bes
		a8 c bes c f c bes c
		a c bes c f, c' bes c
		
		% 31
		
		a c bes c f c bes c 
		a c bes c f, c' bes c
		f c g' c, a' c, a' c,
		ees c f c g' c, g' c,
		f c g' c, a' c, g' c,
		f c f c e c e c
		
		% 37
		
		 a a bes c d d c d
		 g, g a bes c c d e
		 f e f d bes4 c
		 f,2 r
		 f' bes
		 
		% 42
		
		 a r4 g
		 f d ees4. f8
		 d2 c
		 bes4 d c ees
		 d4.( ees16 f) c4 f,
		 
		% 47
		
		 bes4 d c ees d2 c
		 bes4 c d bes
		 f' f, f' ees d bes c a
		  bes f a f
		  ees' d8 c d2
		 
		% 52
		
		 g4 bes, f' bes,
		 ees d8 c d2
		 g4 bes, f' bes,
		 ees2 ees
		 ees2. d8 c
		 
		% 57
		
		 d4 bes f f'
		 bes,2 r
		 b8 d c d b d c b
		 c ees d ees c ees d c
		 b d c d b d c b
		  
		% 62
		
		 c ees d ees c ees d ees
		 f aes aes aes f aes aes aes
		 bes, d c d bes d c d
		 ees g g g ees g g g
		 a, c bes c a c bes c
		  
		% 67
		
		 d f f f d f f f 
		 g, a b c d ees f4
		 r4 ees8 d c4 b
		 c2 r
		 c8 d ees f g ees f g
		
		  
		% 72
		
		 c,2 g'8( f ees4)
		 r2 ees8( d c4)
		 r2 g'8( f ees4)
		 ees8( d c4) c8( bes a4)
		 a8( g f4) c'8( bes a4)
		  
		% 77
		
		 bes8 a bes c bes d c bes a bes c bes a f g a
	\bar "|."
	}
}
