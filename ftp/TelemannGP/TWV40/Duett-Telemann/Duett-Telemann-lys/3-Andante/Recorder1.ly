\version "2.12.1" 



andanteuno  = {
	\time 6/4
	\override Score.MetronomeMark #'stencil = ##f
	\set Staff.instrumentName="Recorder 1"
	\set Staff.midiInstrument="recorder"
	\key bes \major
				
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
	
	\clef treble
	\relative c'' { 	
		
		\repeat volta 2 {bes8( c) d4 r d8([ c) bes( c)] c8. bes32 c |
			\times 2/3 {d8( bes c)} d4 r g g g
			g fis g8 a bes4 bes8 a bes c
			a4 d r g, g8[ f g aes]
			f4 bes r ees, ees8([ d) ees( f)]
			d4 g r f g8[ f ees d]
			ees4. d8 c4~ c8[ ees d c bes a] 
			bes c c4. bes16 c d2.
		}
		\repeat volta 2 {bes8( c) d4 r f8([ ees) d( ees)] ees8. d32 ees
			\times 2/3 {f8( d ees)} f4 r bes, bes bes
			bes a bes8 c d4 d8([ c) d( ees)]
			c4 f r f ees8([ d) ees( f)]
			d4 g r g f8([ e) f( g)]
			e4 a r a g8[ fis g a]
			fis4. g8 a4~ a8[ bes a bes c a]
			bes8( c) a4. g8 g2.
		}
	\bar "|."
	}

}
