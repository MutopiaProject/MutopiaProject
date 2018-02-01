\version "2.18.2"

gigue = \relative a' {
    \key d \minor 
    \time 3/8
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		\partial 8 a8 | % 0
		d,4 bes'8 | % 1 
		cis,4 g'8 | % 2
		f16 [e f g a8] | % 3 
		d,4 d'8  | % 4 
		e,16 [(f g8)] bes  | % 5 
		c,16 [(d e8) c']  | % 6
		a16 [g a bes c a]  | % 7
		f4 \trill a8  | % 8
		b,8 [(g') cis,] | % 9 
		d8 [(f16) c (bes a)] | % 10
		g8 [(ees') a,] | % 11
		bes8 [(d16) a (g f)] | % 12
		e8 [(cis') bes'] | % 13
		a8 [g16 (f e d)] | % 14
		<<{e16 [(f g e f d)]} \\ {a4.}>> | % 15
		e'8 [(a,) c'] | % 16  
		<<{
		    c16 [(d ees c d a)] | % 17
		    bes4 bes8 | % 18
		    bes16 [(c d bes c g)] | % 19
		    a4 a8 | % 20
		    b16 [(c) d (b) c (a)] | % 21
		    d16 [(e) f (d) e (c)] | % 22
		    b16 [(c) d (b) c (a)] | % 23
		    e'4 gis,8  | % 24
		    a16 [(b) c (a) d (b)] | % 25
		    a16 [(b) c (a) d (b)] | % 26
		    a16 [(b) c (a) d (b)] | % 27
		    a16 [(b) c (a) d (b)] | % 28 
		    f'8 [(e16 d c b)] | % 29
		} \\ {
		    d,4. | % 17 
		    d8 [ g, d'] | % 18
		    e4. | % 19
		    f8 [f, f'] | % 20
		    d8 [ d d] | % 21
		    d8 [ d d] | % 22
		    d8 [d d] | % 23
		    d4 s8 | % 24
		    <c e>8 s4 | % 25
		    d8 s4 | % 26
		    e8 s4 | % 27
		    f8 s4 | % 28 
		    gis8 s4 | % 29
		}>>
		c,,16 [e'' (d c) b (gis)] | % 30
		a16 [(f) e (d) e (cis)] | % 31
		a4 \break  % 32
	}	
	\repeat volta 2 {
		c'8 | % 0
		f,4 d'8  | % 33
		e,4 bes'8  | % 34
		a16 [g a bes c8]  | % 35
		f,4 a8  | % 36
		d,16 [ (e f d) c b] | % 37
		g'16 [(a g) f e d] | % 38
		e16 [(d e) f g e] | % 39
		c4 e8  | % 40
		fis16 [(g a) c, bes a] | % 41
		bes16 [(d g) bes, a g] | % 42
		fis16 [(a c) ees d c]| % 43
		bes16 [(a bes) d g bes]| % 44
		aes16 [(g aes) fis g ees'] | % 45
		d,8 [g (fis)] | % 46
		g16 [ees (d) c (d) bes] | % 47
		g4 bes'8 | % 48
		<<{bes4 s8} \\ {e,16( f g) e f d}>> | % 49
		c16 [(d e) c d bes] | % 50
		a16 [(bes c) a bes g] | % 51
		f4 a'8 | % 52
		<<{a4 s8} \\ {d,16( e f) d e c}>> | % 53
		bes16 [(c d) bes c a]| % 54
		g16 [(a bes) g a f]| % 55
		e4 g'8 | % 56
		a,16 [(b cis) d e g]| % 57
		f16 [(g a) cis d f,]| % 58
		e16 [(f g) a bes d,]| % 59
		cis16 [(d e) a, bes g]| % 60
		<<{
		    d'16 [(e) f (d) g (e)]| % 61
		    d16 [(e) f (d) g (e)]| % 62
		    d16 [(e) f (d) g (e)]| % 63
		    d16 [(e) f (d) g (e)]| % 64
		} \\ {
		    <f, a>8 s4 | % 61
		    g8 s4 | % 62
		    a8 s4 | % 63
		    bes8 s4 | % 64
		}>>
		cis16 [ bes' (a g f e)]| % 65
		f,16 [a' (g f) e (cis)] | % 66
		d16 [bes (a g) a f]| % 67
		d16 [a' d e f d]| % 68
		<<{
		    ees16 [(f) g (ees) f (d)] | % 69
		    g16 [(a) bes (g) a (f)] | % 70
		    ees16 [(f) g (ees) f (d)] | % 71
		} \\ {
		    g,8 [ g g] | % 69
		    g8 [ g g] | % 70
		    g8 [ g g] | % 71
		}>>
		<<{cis'4} \\ {g,} \\ {e'}>> d'16 [(c)]| % 72
		bes16 [( a g f e d)]| % 73 
		cis16 [(b a g f e)]| % 74
		d16 [f a d f a]| % 75 
		d4 % 76
	}
}
