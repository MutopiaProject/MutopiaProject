\version "2.12.1" 



prestouno  = {
	\time 2/2
	\override Score.MetronomeMark #'stencil = ##f
	\set Staff.instrumentName="Recorder 1"
	\set Staff.midiInstrument="recorder"
	\key bes \major
	\clef treble
				
	%------------------Números de compás--------------------------
	% ===========================================================
	\override Score.BarNumber #'self-alignment-X = #0 % Alinear números de compás al centro
	\override Score.BarNumber #'font-size = #2 % Tamaño del número
	\override Score.BarNumber  #'stencil
	= #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
	\repeat unfold 3
	\override Score.BarNumber #'break-visibility = #'#(#f #t #t)
	\set Score.currentBarNumber = #1
	\bar ""  % Habilitar la impresión del número del primer compás
	% Imprimir el número de compás cada dos compases
	\set Score.barNumberVisibility = #(every-nth-bar-number-visible 10) % Numerar los compases cada...
	% ===========================================================
	
	\relative c'' { 
		
		% 1
			
		f2 bes |
		a r4 g |
		f d ees4. f8 |
		d2 c |
		bes4 d c ees |
		
		% 6
		
		d4.( ees16 f) c4 f, |
		bes d c ees |
		d2 c |
		bes4 c d bes |
		f' f, f' ees |
		
		% 11
		
		d bes c a |
		bes f a f |
		ees' d8 c d2 |
		g4 bes, f' bes, |
		ees d8 c d2 |
		
		% 16
		
		g4 bes, f' bes, |
		ees2 ees |
		ees2. d8 c |
		d4 bes f f' |
		bes,\fermata f'8 ees d4 c |
		
		% 21
		
		bes8 a bes c  bes d c bes  |
		a f g a bes c bes a |
		bes ees d ees a, d c d |
		g, g' fis g d g fis g |
		c, a bes c d d c d |
		
		% 26
		
		bes c bes a bes a g a  |
		b c b a b g a b |
		c b c d e c d e |
		f4 c a c |
		f2. g8 e |
		
		% 31
		
		f4 c a c |
		f2. g4 
		a bes c2 |
		g4 a bes2 |
		a4 bes c bes |
		a2 g |
		
		% 37
		
		 c f, |
		 bes2. g4 |
		 a4. bes8 g2 |
		 f4 f,8 g a f g a |
		 bes4 c d bes |
		 f' f, f' ees  |
		 
		% 42
		
		 d bes c a  |
		 bes f a f |
		 r2 a4.( bes16 c) |
		 bes2 a |
		 r2 a4.( bes16 c) |
		 
		% 47
		
		 bes4 f a f |
		 f'2 bes |
		 a r4 g4 |
		 f d ees4. f8 |
		 d2 c |
		 
		% 52
		
		 g'4 bes, f' bes, |
		 ees d8 c d2 |
		 g4 bes, f' bes, |
		 ees d8 c d2 |
		 c4 ees g bes, |
		 
		% 57
		
		 a c f, a |
		 bes d c a' |
		 bes bes,8( a) bes4 c |
		 d8 f ees f d f ees d  |
		 ees g f g ees g f ees |
		  
		% 62
		
		 d8 f ees f d f ees d  |
		 ees g f g ees g f g |
		 aes c, c c aes' c, c c |
		 d f ees f d f ees f |
		 g bes, bes bes g' bes, bes bes |
		  
		% 67
		
		 c ees d ees c ees d ees |
		 f d d d f d d d |
		 b c d ees f g aes4 |
		 r  g8 f ees4 d |
		 c8 d ees f g ees f g |
		  
		% 72
		
		 c,2 r |
		 g'8( f ees4) r2 |
		 ees8( d c4) r2 |
		 g'8( f ees4) ees8( d c4) |
		 c8( bes a4) a8( g f4) |
		  
		% 77
		
		 c'8( bes a4) ees'8( d c4) |
		 d8 c d ees d f ees d 
		 c bes a g 
		f2^\markup{\bold "D.C." } 
	\bar "|."
	}

}
