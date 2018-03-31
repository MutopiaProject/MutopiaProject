\version "2.18.2"

sarabande =  \relative g {
    \key c \minor 
    \time 3/4 
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		g8 [(es b c)] as4 | % 1
		c'8 [(aes e f)] b,4 | % 2
		d'8 [(aes e f) g, (g') ] | % 3
		f8 [(es b c)] c,4 | % 4
		c'8 [(es aes g) des' (c) ] | % 5
		d,8 [(f bes aes) c (bes)] | % 6
		aes8 [(g d es) bes (d) ] | % 7
		es,2. | % 8
	}
	\repeat volta 2 {	
		bes''8 [(g d es)] des,4 | % 9
		bes''8 [(g e f)] g,4 | % 10
		des''8 [(bes e, f) c, (c'')] | % 11
		bes8 [(aes e f)] f,4 | % 12
		es8 [(c' f es) bes' (a)] | % 13
		d,,8 [(d' g f) c' (b)] | % 14
		c8 [(aes fis g) b, (c) ] | % 15
		g8 [(d' g fis) c' (b) ] | % 16
		ees8 [(c fis, g) a, (ees'') ] | % 17
		d8 [(as e f) b, (g') ] | % 18
		f8 [(es b c) g (b') ] | % 19
		c,,8 [ (g' f' es) ] c'4 | % 20
    }
}

