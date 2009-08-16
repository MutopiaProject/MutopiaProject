\version "2.12.1" 



allegrouno  = {
	\time 3/4
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
		
		r2. |
		r |
		f8[ f f f] f g16 a |
		bes8[ bes bes bes] bes a16 g |
		a4 c bes |
		
		% 6
		
		a bes g |
		a c bes |
		a bes g |
		a8[ f f f] f g16 a |
		bes4 r8 aes g f |
		
		% 11
		
		g4 bes aes |
		g aes f |
		g bes aes |
		g aes f |
		g8( f ees d c bes) |
		
		% 16
		
		ees( d c bes a g) |
		f4-| a-| c-| |
		ees4. a8 bes f |
		g c a4. bes8 |
		bes4 bes, r |
		
		% 21
		
		a4 c a |
		bes8 f' d f bes, f' |
		c f a, f' c f |
		d4 r c |
		b r d |
		
		% 26
		
		g, b g |
		c8 g' ees g c, g' |
		d g b, g' d g |
		ees4 c r |
		b d b |
		
		% 31
		
		c ees2~ |
		ees8 d d c b g |
		c g ees' g, d' g, |
		c g d' g, b g |
		c g ees' g, d' g, |
		
		% 36
		
		c g d' g, b g |
		c[ g'] \times 2/3 {g([ a g)]} \times 2/3 {g( a g)} |
		r g  \times 2/3 {g([ a g)]}  \times 2/3 {g([ a g)]} |
		r g a g f e |
		f[ d d d] d e16 f |
		
		% 41
		
		g4 g2~ |
		g8[ f f f] f g16 a |
		bes8[ bes bes bes] bes a16 g |
		a8[ f, a c] f g16 e |
		f4 r r |
		
		% 46
		
		r16 f, g a bes a bes c d c d e |
		f4 r r |
		r8 f[ f f] f g16 a |
		bes4 r8 aes g f |
		g f ees f g a |
		
		% 51
		
		bes, f d' f, c' f, |
		bes f c' f, a f |
		bes f d' f, c' f, |
		bes f c' f, a f |
		bes f16 bes d8 bes16 d f8 d16 f |
		ees8 c16 ees g8 ees16 g ees8 c16 ees |
		
		% 57
		
		d8 bes16 d f8 d16 f a8 f16 a |
		g8 ees16 d ees8 g16 f g8 ees16 d |
		ees4 r r |
		g8( f ees d c bes) |
		ees( d c bes a g) |
		
		% 62
		
		f4. ees'8 d([ c16 bes)] |
		ees8( d16 c) f4 f, bes2. |
		
	\bar "|."
	}

}
