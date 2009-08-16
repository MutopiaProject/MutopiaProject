\version "2.12.1" 



affetuosouno  = {
	\time 4/4
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
	\set Score.barNumberVisibility = #(every-nth-bar-number-visible 5) % Numerar los compases cada...
	% ===========================================================

	\relative c'' { 
		
		% 1
		
		r8 d16 ees f8 f c d16 ees f8 f |
		bes, g'16 f ees d c bes a8 c'16 bes a g f ees |
		d( c bes8) r bes a4 r8 a |
		g4 r8 f f4 r8 a |
		bes d16 g g f f e e d c8 r cis |
		
		% 6
		
		d f16( bes) bes( a) a( g) g f e8 r e|
		f a16 bes c8 c g a16 bes c8 c |
		f,d'16 c bes a g f e8 g16 f e d c bes |
		a8 d bes c f,4 r8 a' |
		bes4 r8 d, ees16 bes ees aes f8.-+ ees16 |
		
		% 11
		
		ees8 g16( ees) ees( g) g( ees) ees( d) f( d) d( f) f( d) |
		d( c) ees( c) c( ees) ees( c) c( bes) f'( ees) ees( d) c( bes)  |
		a4 r r16 f' f f f( d32 ees f16) a, |
		bes4 r8 d8 c16 c' c c c( a32 bes c16) ees,  |
		a f bes c a8.-+ bes16 bes8 bes, bes4~ |
		
		% 16
		
		bes8 g'16( f) e( d) d( c) c8 c~ c16( bes) bes( a) |
		a4 r r16 bes' bes bes bes g32 a bes16 d, |
		ees8 c16 d ees4 ees16~ ees d ees c8.-+ bes16  |
		bes d f bes a bes32 c f,16 a bes4 r |
		
	\bar "|."
	}

}
