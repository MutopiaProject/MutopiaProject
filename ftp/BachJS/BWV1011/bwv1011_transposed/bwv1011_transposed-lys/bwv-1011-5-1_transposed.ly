\version "2.18.2"

gavotteI =    \relative e {
    \key c \minor 
    \time 4/4
    \set Staff.midiInstrument = "cello"
    
    \repeat volta 2 {
		\partial 2 <<{g4} \\ {c,,} \\ {ees'}>> c'4 | % 0
		<<{aes4 s aes s} \\ {f4 bes8 [(g)] d4 bes'8 [(f)]}>> | % 1
		g4 es8 [(b)] c4 aes'8 [(es)] | % 2
		f4 d8 [(a)] b [(d)] g4 | % 3
		<<{ees4\trill} \\ {c,} \\ {g'}>>  d'8 [(c)] g' [(es) c' (g)] | % 4
		aes8 [(f) bes (e,)] aes [(f) bes (d,)] | % 5
		g8 [(es!) aes (d,)] g [(es) bes' (g)] | % 6
		c8 [(as) des (g,)] c [(as) ees' (a,)] | % 7
		d8 [(bes!) ees (d)] c [(bes) a (g)] | % 8
		<<{<g a>4  s a s} \\ {c,4 bes'8 [(g)] ees4 c'8 [(a)]}>>  | % 9
		<<{bes4} \\ {d,}>> c'8 [(a)] <<{bes4} \\ {c,} \\ {g'}>> ees'8 [(c)] | % 10
		<<{d4 g, bes8([ a)] g([ fis])} \\ {r4 bes, c d8 s} \\ {s4 d g s}>> | % 11
		<<{g2} \\ {g,} \\ {d'}>>  % 12
	}
	
	\repeat volta 2 {
		<<{bes'4} \\ {g,} \\ {d'}>> g4 | % 0
		<<{e} \\ {c,} \\ {g'}>> f'8 [ (d)] <<{e4} \\ {bes}>> c'8 [( e, )]  | % 13
		<<{f4} \\ {aes,}>> g'8 [ (e) ] f4 c'8 [ (f,) ] | % 14
		<<{g4} \\ {e}>> aes8 [ (f) ] <<{g4} \\ {c,}>> c'8 [ (g) ] | % 15
		<<{bes8 [ (aes g f) ]} \\ {f4 s}>> as8 [ (g f es) ] | % 16
		d8 [ (as) es' (c) ] d [ (as) bes' (d,) ] | % 17
		es8 [ (g,) f' (d) ] es [ (g,) bes' (es,) ] | % 18
		f8 [ (bes,) g' (es) ] f [ (bes,) bes' (f) ] | % 19
		aes8 [ (g) f (es) ] <<{aes4 g} \\ {c, bes} \\ {ees ees}>> | % 20
		<<{f8 [(es f d)]} \\ {aes4 s}>> <<{c'4 bes} \\ {aes, g} \\ {ees' ees}>> | % 21
		<<{es8 [ (d es c)] d4 aes'} \\ {f,4 s f d'} \\ {aes s aes s}>> | % 22
		<<{aes'8 [ (f g es) ] g [ (f es d) ]} \\ {ees s8 s4 bes8 s s4}>> | % 23
		<<{ees2 g4 ees} \\ {ees,2 ees4 r} \\ {bes'2 bes4 s}>> | % 24
		<<{bes'4 s bes c8([ g])} \\ {d4 c'8 [(a)] r4 e4 }>> | % 25
		<<{bes'8 [(a) g (f)]} \\ {f4 s}>> a8 [(g) b (a)] | % 26
		<<{c8 [ (b) d (b)]} \\ {fis4 s}>> c'8 [ es, (d c) ] | % 27
		g8 [ (d') c' (b) ] ees [ (g,) as (f) ] | % 28
		d'8 [ (f,) g (es) ] c' [ (es,) f (d) ] | % 29
		<<{c'8 [(b a g)]} \\ {g,2} \\ {d'}>> c'8 [( es,) f (d)]  | % 30
		bes'!8 [ (d,) es (c) ] as' [ (c,) d (b) ] | % 31
		<<{g'8[ f es d] c4} \\ {d,8 s s4 ees4} \\ {b'8 s s4 s}>> es8 [ (c) ] | % 32
		<<{d4 ees8( c) d4 s} \\ {f,4 s aes f'8( d)} \\ {c4 s s s}>> | % 33
		<<{ees4 s ees s} \\ {g,4 f'8( d) f,4 aes'8( f)} \\ {s4 s c4 s}>> | % 34
		<<{g'4 c, ees8([ d) g,( b)]} \\ {r4 ees, f8 s s4} \\ {s4 s c'8 s s4}>> | % 35
		<<{c2} \\ {c,}>>  % 36
	}
}
