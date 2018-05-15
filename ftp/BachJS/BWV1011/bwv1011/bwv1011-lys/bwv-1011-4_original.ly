sarabande =  \relative g {
    \set Staff.midiInstrument = "cello"
    \key c \minor 
    \time 3/4
    
	\repeat volta 2 {
		g8 [(es b c)] as4 | % 1
		d'8 [(bes e, f)] b,4 | % 2
		e'8 [(bes e, f) g, (g') ] | % 3
		f8 [(es b c)] c,4 | % 4
		c'8 [(es bes' as) es' (d) ] | % 5
		d,8 [(f c' bes) d (c)] | % 6
		bes8 [(as d, es) bes (d) ] | % 7
		es,2. | % 8
	}
	\repeat volta 2 {	
		c''8 [(as d, es)] des,4 | % 9
		c''8 [(as e f)] g,4 | % 10
		es''8 [(c e, f) c, (d'')] | % 11
		c8 [(bes e, f)] f,4 | % 12
		es8 [(c' f es) c' (b)] | % 13
		d,,8 [(d' g f) d' (cis)] | % 14
		d8 [(bes fis g) b, (c) ] | % 15
		g8 [(d' g fis) d' (cis) ] | % 16
		f8 [(d fis, g) a, (f'') ] | % 17
		es8 [(as, e f) b, (g') ] | % 18
		f8 [(es b c) g (cis') ] | % 19
		c,,8 [ (g' f' es) ] d'4 | % 20
    }
}

