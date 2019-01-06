\version "2.18.2"

courante =  \relative c {
    \key c \minor 
    \time 3/2 
    \set Staff.midiInstrument = "cello"
    
    \repeat volta 2{
		\partial 8 c8 | % 0
		<<{c4.} \\ {c,}>> d'8 es [ (f g as) ] g [ (f g es) ] | % 1
		<<{f4.} \\ {d,} \\ {b'}>> es8 es [ (d c b) ] c4. d8 | % 2
		<<{g,4.} \\ {ees}>> c'16 [ b16 ] c4 d4 f8 [ (es d c) ] | % 3
		<<{aes'4.} \\ {f,} \\ {f'} \\ {c}>> f8 \appoggiatura c'8 <<{ b4 c4 d,4. g8} \\ {r4 ees g,2}>> | % 4
		<<{ees'4. d8} \\ {c,2} \\ {g'}>> c8 [(d es f)] g [(aes c bes)] | % 5
		<<{bes4.} \\ {g,} \\ {ees'}>> aes8 g [( f es d)] d [( es a,8. f'16)] | % 6
		es8 [(d c bes)] bes'4. c8 bes [( a bes g)] | % 7
		<<{c4.} \\ {ees,}>> bes'8 bes [(a g fis)] g4. a8 | % 8
		<<{g8 [( fis e d)] d'4 c8 [b ] c4 d } \\ {d,8 s s4 r4 f ees d}>>| % 9
		<<{ees'4.} \\ {c,} \\ {g'}>> d'8 c [ bes a bes] fis4. \trill g8 | % 10
		a,8 [ fis' c' d ] \appoggiatura c8 <<{ <d, bes'>4} \\ {g,} >> c8. [a'16] <<{a4. \trill g8} \\ {d2}>> | % 11
		<<{g4 s s g2} \\ {g4~ g16 f( ees d) ees8. c16 g2}>> r8 % 12
	}
    \repeat volta 2{
		d''8 | % 0
		<<{d4.} \\ {g,,} \\ {b'}>> ees8 d [ c b c16 d ] g,4. aes8 | % 13
		<<{f4.} \\ {a,}>> es'8 d [(es f as) ] <<{g4 f} \\ {b, g}>> | % 14
		<<{f'8 [(es d c)] aes'4} \\ {c,8 s s4 r}>> <<{g' c4. des8} \\ {bes,4 aes4. s8} \\ {d4 ees4. s8}>> | % 15
		<<{e4.\trill} \\ {g,}>> f'8 g [( aes bes c )] des4 <<{c} \\ {e,!}>> | % 16
		<<{bes'8 [( aes g f )]} \\ {f s s4}>> es!8 [( des es c )] des [( f g as )] | % 17
		as8 [ g f es ] <<{ees'4.} \\ {c,} \\ {aes'}>> f'8 <<{bes,4.} \\ {ees,}>> aes8 | % 18
		aes4. g8 aes [ bes c d] d4. c16 [ d16 ] | % 19
		<<{ees4.} \\ {g,}>> bes8 c4 <<{g4 g8 [ aes d, bes' ]} \\ {ees,4 f}>> | % 20
		<<{aes8 [(g f es )]} \\ {ees s s4}>> g8 [( a g a )] a4. \trill g16 [( a )] | % 21
		<<{bes4.} \\ {d,}>> a'8 c [( b )] <<{c4 bes8 [( aes )] g [(f )]} \\ {ees4 f8 s d s}>> | % 22
		<<{f4. g8 es4 f,8 [ d' ] d4. \trill c8} \\ {b4 g c s g4. s8}>> | % 23
		c4. g16 [ f] es [ f g8] <<{c'2} \\ {c,,} \\ {ees'} \\ {g,}>> r8 s8 | % 24
    }
}
