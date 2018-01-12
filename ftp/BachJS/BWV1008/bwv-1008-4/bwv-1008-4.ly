\version "2.18.2"

sarabande = \relative c' {
    \key d \minor 
    \time 3/4
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		<<{d8. [e16] e4.\trill d16 [e]} \\ {d4 a2}>>  | % 1
		<<{f'4.} \\ {d,} \\ {a'}>> e'8 [d c] | % 2
		bes8 [g'] f \prall [e16  (f] g [a bes d,)] | % 3
		cis4. \trill b8 [a g] | % 4
		<<{d8.[ e'16] e4. \trill d16 [e]} \\ {f,4 a2} \\ {a4 s2}>>  | % 5
		<<{f'4.} \\ {d,} \\ {a'}>> d8 [e f] | % 6
		g8 [bes16 (a)] c [(bes) a (g)] d'8 [f,] | % 7
		<<{e4.\trill} \\ {c,} \\ {g'}>> d'8 [c bes] | % 8
		<<{f'8 [ g16 (a)] a4. g16 [(f)]} \\ {a,4 bes4. s8} \\ {s4 d4. s8}>> | % 9
		<<{g8 [a16 ( bes)] bes4. c16 [( d)]} \\ {bes,4 g2} \\ {s4 f'2}>> | % 10
		e8 [f] c, [g'] f' [ e] | % 11
		f4 f,2 | % 12
	}
	\repeat volta 2 {
		<<{a'4 a4. \trill bes8} \\ {f8 ees ees4. s8}>> | % 13
		<<{c'8 [bes16 (a)]} \\ {d,4}>> fis8. \trill [ees16] d8 [c]  | % 14
		bes8 [g'] a, [fis'] ees' [d]  | % 15
		<<{bes4.\trill} \\ {g,} \\ {d'}>> a'8 [g f] | % 16
		e8 [bes (a) f' g a] | % 17
		d,8 [aes (g) ees' f g] | % 18
		cis,8 [bes'] a [g16 (f)] e8 [f16 (d)] | % 19
		cis8 [e16 (a)] a,8. g'16 f8 e | % 20
		<<{d8 [e16 (f)] f4. e16 [(d)]} \\ {bes4 g2}>>  | % 21
		<<{e'8 [f16 (g)] g4. a16 [(bes)]} \\ {g,4 cis,4 s} \\ {s bes'4. s8}>> | % 22
		<<{a'8 [cis16 (d)] d,8 [(e16 f32 g)] f8 \trill [ e16 (d)]} \\ {f,8 r r g a4} \\ {d8 s s4 s} \\ {a8 s s4 s}>> | % 23
		d4 d,16 [a' (b cis] d [e f g)] | % 24
		<<{a16 [(b c b)] c4. b16 [(a)]} \\ {f4 fis4. s8}>> | % 25
		<<{b16 [ (cis d cis)] d4. e16 [(f)]} \\ {g,,4 gis'4. s8} \\ {d4 s2}>> | % 26
		d'16 [(cis d) f,] a,8 [e'] d' [(cis)] | % 27
		d4 d,,2 | % 28
	}
}

