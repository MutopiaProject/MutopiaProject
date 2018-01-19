\version "2.18.2"

menuetI = \relative f' {
    \key d \minor 
    \time 3/4
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		<<{a2} \\ {d,} \\ {f}>> bes4 | % 1
		<<{bes8[ a bes g]} \\ {c, s s4} \\ {e8 s s4}>> a4 | % 2
		<<{d,4} \\ {bes}>> g' f8 [e] | % 3
		<<{f [(e d) cis b a]} \\ {a8 s s2}>> | % 4
		<<{a'2} \\ {d,} \\ {f}>> bes4 | % 5
		<<{bes8 [(a) bes g]} \\ {e8 s s4}>> c'4 | % 6
		<<{a d e} \\ {f, bes, g} \\ {s f' g}>> | % 7
		<<{cis2.} \\ {a,} \\ {e'}>> | % 8
	} % end repeat
	
	\repeat volta 2 {
		<<{e'2} \\ {a,}>> d8 [(e16 f)] | % 9
		<<{e8 [(d cis e a,) g]} \\ {g s s2}>> | % 10
		<<{a4 (d) cis} \\ {f,2 e4}>> | % 11
		<<{g'8 [(f e f d) c!]} \\ {d, s s2}>> | % 12
		<<{bes'2 c4} \\ {g4 f e}>> | % 13
		<<{a8 [g a f] d'4} \\ {f,8 s s4 bes,} \\ {s2 e4}>> | % 14
		<<{c'4} \\ {a,} \\ {f'}>> bes8 [ a g a] | % 15
		f8 [ e f a g bes] | % 16
		<<{a2 \trill bes4} \\ {fis2 r4}>> | % 17
		<<{c'8 [bes c a] } \\ {ees8 s s4}>> fis4 \trill | % 18
		<<{d'4 c bes8 a} \\ {bes,4 c d} \\ {g g s}>> | % 19
		<<{c8 [( bes a bes g) bes]} \\ {g, s s2} \\ {d'8 s s2}>> | % 20
		<<{d'4 (cis) d} \\ {g, s f}>> | % 21
		<<{g8 [(f) g e ] f4} \\ {cis8 s s4 d}>> | % 22
		g,8 [(g')] <<{e4. \trill} \\ {a,}>> d8 | % 23
		<<{d2.} \\ {d,} \\ {a'}>> | % 24
	}
		\key d \major 
}

