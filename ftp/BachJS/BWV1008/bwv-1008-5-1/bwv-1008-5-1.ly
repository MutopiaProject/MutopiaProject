\version "2.18.2"

melodyOne = \relative f' {
    \key d \minor 
    \time 3/4
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		<f a>2 bes4 | % 1
		<e, bes'>8 [(a) bes g] a4 | % 2
		d,4 g f8 [e] | % 3
		f [(e d) cis b a] | % 4
		<f' a>2 bes4 | % 5
		bes8 [(a) bes g] c4 | % 6
		a4 <f d'>4 <g e'>4 | % 7
		<e cis'>2. | % 8
	} % end repeat
	
	\repeat volta 2 {
		e'2 d8 [(e16 f)] | % 9
		e8 [(d cis e a,) g] | % 10
		a4 (d) cis | % 11
		g'8 [(f e f d) c] | % 12
		bes2 c4 | % 13
		a8 [g a f] <e d'>4 | % 14
		<f c'>4 bes8 [ a g a] | % 15
		f8 [ e f a g bes] | % 16
		a2 \trill bes4 | % 17
		c8 [bes c a] fis4 \trill | % 18
		<g d'>4 <g c>4 bes8 [(a)] | % 19
		<d, c'>8 [( bes' a bes g) bes] | % 20
		d4 (cis) d | % 21
		g,8 [(f) g e ] f4 | % 22
		g,8 [(g')] e4. \trill d8 | % 23
		<a d>2.  | % 24
	}
		\key d \major 
}

melodyTwo = \relative d' {
    \key d \minor 
    \time 3/4
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		d2 s4 | % 1
		c8 s8 s2 | % 2
		bes4 s2 | % 3
		a8 s8 s2 | % 4
		d2 s4 | % 5
		e8 s8 s2 | % 6
		f4 bes, g | % 7
		a2. | % 8
	} % end repeat
	
	\repeat volta 2 {
		a'2 s4 | % 9
		g8 s8 s2 | % 10
		f2 e4 | % 11
		d8 s8 s2 | % 12
		g4 (f) e | % 13
		f8 s4. bes,4 | % 14
		a4 s2 | % 15
		s2. | % 16
		fis'2 r4 | % 17
		ees8 s8 s2| % 18
		bes4 c d | % 19
		g,8 s8 s2 | % 20
		g'4 s4 f4 | % 21
		cis8 s4. d4 | % 22
		s4 a4. s8 | % 23
		d,2. | % 2
	}
}

menuetI = << \melodyOne \\ \melodyTwo >>

