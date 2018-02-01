\version "2.18.2"


courante = \relative d'' {
    \key d \minor
    \time 3/4
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		\partial 16 d16 | % 0
		d16 [a f a] d, [ f g a ] bes [ a bes g ] | % 1
		<<{a4 s} \\ {cis,~ cis16 d e f} \\ {g4 s}>>  g16 [f g e ] | % 2
		f16 [ d e c] bes [( a bes) a'] g [ f e d ] | % 3
		cis16 [ e a, (b] cis [ d e f] g) [ bes a e] | % 4
		f16 [ a d, (e ] f [ g a bes] c) [ bes d c] | % 5
		<<{c4~ c16 bes a g} \\ {a,4 s} \\ {f' s}>> f16 [ (ees) d (ees) ] | % 6 
		d16 [ bes ( a bes)] d [ bes e bes] f' [ bes, g' bes,] | % 7
		e,16 [(g c) d] e [f g a] bes [(a) bes (g)]  | % 8
		a16 [f (e f)] a [f bes f] c' [f, d' f,]  | % 9
		cis16 [(e a) b] cis [d e f] g [(f) g (e)]  | % 10
		d,16 [(a' f') e] d [c d c] b [a b a] | % 11 
		gis16 [(a b) e,] f [e f d] e [c d b] | % 12
		c16 [a' (b c] b [a gis a)] d, [a' e a]  | % 13
		f16 [a (b c] b [a gis a)] f [a e a] | % 14
		dis,16 [a' (b c] b [a gis a)] e [a e gis] | % 15
		a16 [e cis e] a, [cis e gis] a8. \pageBreak % 16
	} % end repeat
 
	\repeat volta 2 {
		e'16  % 
		e16 [ cis a cis] e, [ f g a ] bes [(g) cis (g)] | % 17
		<<{d'4~ d16 a d e} \\ {f,4 s}>> f'16 [ d a c ] | % 18
		b16 [f d f] g, [ d' f g] b [ f d' f,] | % 19
		e16 [g c, (d] e [f g a] bes) [d c g] | % 20
		<f a>16 [ c' (bes a] g [f ees d] ees) [ c' f, ees] | % 21
		<<{d4~ d16 e f g} \\ {bes,4 s}>> a'16 [ bes c d] | % 22
		e,16 [ bes (a g)] a [ f' g, f] c [ (g' f' ) e] | % 23
		f16 [a (bes a] g [f e f)] g [e f d]  | % 24
		cis16  [g' b, g'] a, [g' b, g'] cis, [g' a, g']  | % 25
		f16 [d f a] d [a d e] f [a, f d] | % 26 
		g,16 [d' (g a)] bes [g' a, f'] g, [e' f, d'] | % 27
		cis16 [d e cis] a [cis bes cis] a [cis g cis]  | % 28
		f,16 [d' (e f] e [d cis d)] g, [d' a d]  | % 29
		bes16 [d (e f] e [d cis d)] bes [d a d] | % 30
		gis,16 [d' (e f] e [d cis d)] a [d a cis] | % 31
		d16 [a f a] d, [f a, d] d,8. s16 | % 32
		
	} % end repeat
}
