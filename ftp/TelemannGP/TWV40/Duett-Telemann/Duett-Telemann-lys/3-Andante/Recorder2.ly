\version "2.12.1" 



andantedos  = {
	\time 6/4
	\override Score.MetronomeMark #'stencil = ##f
	\set Staff.instrumentName="Recorder 1"
	\set Staff.midiInstrument="recorder"
	\key bes \major
	\clef treble
	\relative c'' { 	
		
		\repeat volta 2 {g8( a) bes4 r bes8([ a) g( a)] a8. g32 a
			\times 2/3 {bes8( g a)} bes4 r r bes8([ a) bes( c)]
			a4 d r g g g
			g fis g8 a bes4 ees, ees
			ees d ees8 f g4 c, c 
			c bes8[ a bes g] a4 b g
			c c'8 bes a g fis2 r4
			g8 a a4. g8 fis2.
		}
		\repeat volta 2 {d8( ees) f4 r d8( c) bes( c) c8. bes32 c
			\times 2/3 {d8( bes c)} d4 r r d8([ c) d( ees)]
			c4 f r bes, bes bes
			bes a bes8 c d4 c r
			c4 bes8( a) bes( c) a4 d r
			d4 c8([ bes) c( d)] bes4 ees r
			d a'8 bes c4 fis,4. g8 a fis 
			g( a) fis4. g8 g2.
		}
	\bar "|."
	}
}
