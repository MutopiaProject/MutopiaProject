\version "2.18.2"

melodyOne = \relative c' {
    \key d \minor 
    \time 3/4
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		d8. [e16] e4.\trill d16 [e] | % 1
		<a, f'>4. e'8 [d c] | % 2
		bes8 [g'] f \prall [e16  (f] g [a bes d,)] | % 3
		cis4. \trill b8 [a g] | % 4
		<a d>8. [e'16] e4. \trill d16 [e] | % 5
		<a, f'>4. d8 [e f] | % 6
		g8 [bes16 (a)] c [(bes) a (g)] d'8 [f,] | % 7
		<g, e'>4. \trill d'8 [c bes] | % 8
		f'8 [ g16 (a)] <d, a'>4. g16 [(f)] | % 9
		g8 [a16 ( bes)] bes4. c16 [( d)] | % 10
		e,8 [f] c, [g'] f' [ e] | % 11
		f4 f,2 | % 12
	}
	\repeat volta 2 {
		a'4 a4. \trill bes8 | % 13
		c8 [bes16 (a)] fis8. \trill [ees16] d8 [c]  | % 14
		bes8 [g'] a, [fis'] ees' [d]  | % 15
		<d, bes'>4. \trill a'8 [g f] | % 16
		e8 [bes (a) f' g a] | % 17
		d,8 [aes (g) ees' f g] | % 18
		cis,8 [bes'] a [g16 (f)] e8 [f16 (d)] | % 19
		cis8 [e16 (a)] a,8. g'16 f8 e | % 20
		d8 [e16 (f)] f4. e16 [(d)]  | % 21
		e8 [f16 (g)] <bes, g'>4. a'16 [(bes)] | % 22
		<a, d a'>8 [cis'16 (d)] d,8 [(e16 f32 g)] f8 \trill [ e16 (d)] | % 23
		d4 d,16 [a' (b cis] d [e f g)] | % 24
		a16 [(b c b)] c4. b16 [(a)] | % 25
		b16 [ (cis d cis)] d4. e16 [(f)] | % 26
		d16 [(cis d) f,] a,8 [e'] d' [(cis)] | % 27
		d4 d,,2 | % 28
 
	}
}

melodyTwo = \relative d' {
    \key d \minor 
    \time 3/4
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		d4 a2 | % 1
		d,4. s4. | % 2
		s2.*2 | % 4
		f4 a2 | % 5
		d,4. s4. | % 6
		s2. | % 7
		c4. s4. | % 8
		a'4 bes4. s8 | % 9
		bes4 <g f'>2 | % 10
		s2.*2  | % 12
	}
	
	\repeat volta 2 {
		f'8 [ees] ees4. s8 | % 13
		d4 s2 | % 14
		s2.| % 15
		g,4. s4.  | % 16
		s2.*4 | % 20
		bes4 g2 | % 21
		g4 cis,4. s8 | % 22
		f8 r8 r8 g8 a4 | % 23
		s2. | % 24
		f'4 fis4. s8 | % 25
		<g, d'>4 gis'4. s8 | % 26
		s2.*2 | % 28
	}
}

sarabande = << \melodyOne \\ \melodyTwo >>

