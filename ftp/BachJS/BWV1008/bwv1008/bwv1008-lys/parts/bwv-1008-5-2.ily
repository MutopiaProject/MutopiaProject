\version "2.18.2"

menuetII = \relative c' {
    \key d \major 
    \time 3/4
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		fis4 \trill d8 [e fis g]  | % 1
		a4 fis, a' | % 2
		g,8 [(b)] e4 g | % 3
		d8 [(cis b cis a g)] | % 4
		fis8 [d'' (cis b a g)] | % 5
		b8 [( a g fis e d)] | % 6
		cis8 [(d)] g4 fis8 [(g16 a)] | % 7
		<<{e2.} \\ {a,}>> | % 8
	} % end repeat
	
	\repeat volta 2 { 
		cis'4 e8 [(d cis b)]  | % 9
		cis4 g, cis'  | % 10
		fis,8 [(a)] d4 fis  | % 11
		b,8 [(a) g (fis) g (b)] | % 12
		e,8 [d' (cis b) cis (ais)]  | % 13
		d,8 [b' (a g fis e)]  | % 14
		g8 [(fis e d cis d)]  | % 15
		b8 [(cis d e fis g)] | % 16
		a8 [(g fis g a b)]  | % 17
		c4 dis,, c''  | % 18
		b8 [(a c b  a g)]  | % 19
		fis8 [(g) a (fis) g (e)] | % 20
		cis4 \trill a8 [(b cis d)]  | % 21
		e8 [(fis  g b)] a4  | % 22
		g8[(fis) e (d) e (cis_\markup { Menuet I da Capo } )]  | % 23
		d2. | % 24
	}
}

