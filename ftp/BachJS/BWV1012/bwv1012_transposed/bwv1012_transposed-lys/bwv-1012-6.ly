\version "2.18.2"

gigue =  \relative a' {
    \key d \major
    \time 6/8
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		\partial 8 \clef tenor a8  | % 0
		<<{d,4.} \\ {fis,}>> e'8 [ fis g ] | % 1
		<<{fis8 [ d a' ]} \\ {d,,} \\ {a'}>>  a'16 [( g fis g a8) ] | % 2
		<<{d,8[ a d ] e [ fis g ]} \\ {fis, s s a s s}>>  | % 3
		fis'8 [ d a ] d,4 a''8 | % 4
		fis8 [( a,) a' ] e [( a,) g' ] | % 5
		d8 [( a) fis' ] e [ (a,) g' ] | % 6
		fis8 [ (a,) a' ] e [ (a,) g' ] | % 7
		d8 [ (a) fis' ] e [ (a,) e' ] | % 8
		<<{fis8 [ e fis ]} \\ {d,} \\ {cis'}>> b16 [ (cis d8) b ] | % 9
		gis16 [ (fis gis a b8) ] e, [ d16 cis d b ] | % 10
		<<{e'8[ d e ]} \\ {cis, s s } \\ {b' s s} \\ {e, s s}>>  a16 [ b cis b a g ] | % 11
		fis16 [ e fis g a fis ] <<{d [ fis gis a b cis ]} \\ {cis, s s4}>> | % 12
		<<{d'8[ cis d ]} \\ {b,} \\ {fis'}>> fis'16 [ (gis a8) fis ] \clef bass | % 13
		<<{d8[ cis d ] } \\ {a,} \\ {fis'}>> b16 [ (cis d) b (cis d) ] | % 14
		gis,,16 [ (b e gis b d) ] \clef tenor b' [ (a gis a b e,) ] \clef bass | % 15
		<<{d8 [ cis d ] d4 e8} \\ {e,,8 s s e'4 d8} \\ {gis8 s s s4.} \\ {b,8 s s s4.}>> | % 16
		<<{a'4. b8 [ cis d ] } \\ {cis,4. e8 s4} \\ {e4. s4.}>> | % 17
		<<{cis'8 [ a e']} \\ {a,, s4} \\ {e'8 s4}>> e'16 [ (d cis d e8) ] | % 18
		<<{a,8 [ e a ] b [ cis d ]} \\ {cis,8 s4 e8 s4} \\ {e8 s4 s4.}>> | % 19
		cis'8 [ a e ] a,4 a'8 \clef tenor | % 20
		<<{e'8 [ e e ]} \\ {d d d} \\ {gis,8 s s}>> b16 [ (a b cis d8) ] | % 21
		<<{gis8 [ gis gis ]} \\ {e, s s} \\ {d' d d}>> e,16 [ (d e fis gis8) ] | % 22
		gis16 [ (fis gis a b8) ] b16 [ (a b cis d8) ] | % 23
		<<{b'16 [ gis b gis b gis ] e4.} \\ {d8 d d d16 b d b d b}>> | % 24
		<<{a'16 [ e a e a e ] e8 [ e e ] } \\ {cis cis cis cis16 a cis a cis a}>> \clef bass | % 25
		<<{a8 [ a a ] d, [ d d ]} \\ {fis16 d fis d fis d b gis b gis b gis}>> | % 26
		cis,16 [ e'' (d cis b a) ] e [ d' (cis b a gis) ] | % 27
		a,16 [ e' a cis e gis ] a4 \break % 28
	}
	
	\repeat volta 2 {
		\clef tenor e8 | % 0 
		<<{e4 fis16 [ g ]} \\ {a,4.}>> g'8-. [ fis-. e-. ] | % 29
		e8 [ ais, g' ] e [ ais,16 (b cis b] | % 30
		cis16 [ d cis d e fis ] g8) [ fis e ] | % 31
		d8 [ b fis ] b,4 d'8 | % 32
		g16 [ (fis e d c b) ] c8 [ e, g' ] | % 33
		fis16 [ (e d cis b ais) ] b8 [ d, fis' ] | % 34
		g,,8 [ b''16 (a g fis) ] e [ (d cis d e d) ] | % 35
		cis16 [ (b ais b cis ais) ] fis4 fis'8 | % 36
		d8 [ (fis,) fis' ] cis [ (fis,) e' ] | % 37
		b8 [ (fis) d' ] cis [ (fis,) e' ] | % 38
		d8 [ (fis,) fis' ] cis [ (fis,) e' ] | % 39
		b8 [ (fis) d' ] cis [ (fis,) fis' ] | % 40
		g16 [ (fis e fis g8) ] ais [ b e, ] | % 41
		fis16 [ (e d e fis8) ] ais [ b d, ] | % 42
		cis16 [ (d e fis g b,) ] fis8 [ b ais ] \clef bass | % 43
		b8 [ fis16 (e d cis) ] b8 [ d' a, ] | % 44
		gis8 [ d'' fis,, ] e [ e''16 (d cis b) ] | % 45
		cis8 [ a16 (b cis d) ] \clef tenor e [ (fis gis a b) d, ] | % 46
		eis,8 [ (cis') b' ] cis,, [ b''16 (a b gis) ] | % 47
		a16 [ (fis cis b a gis) ] fis [ (gis a b cis d) ] | % 48
		e16 [ fis g8 cis,, ] a [ a''16 (g fis e) ] \clef bass | % 49
		fis8 [ d,16 (c b a) ] g [ d' (e fis g a) ] \clef tenor | % 50
		b16 [ d (e fis g a) ] b [ (cis d cis b a) ] | % 51
		g16 [ (fis e d cis b) ] a4 \trill a8 | % 52
		d4. \clef bass fis,16 [ (e fis g a8) ] | % 53
		a4. d,16 [ (cis d e fis8) ] | % 54
		fis16 [ (e fis g a8) ] a [ b16 (a g a) ] | % 55
		fis16 [ a, (b cis d e) ] fis [ (g a b c d) ] | % 56
		<<{b8 [ a b ]} \\ {g, s s} \\ {d' s s}>> e16 [ (fis g8) e ] | % 57
		cis16 [ (b cis d e8) ] a, [ g16 fis g e ] | % 58
		fis8 [ a'16 (g fis e) ] d [ (e fis e d cis) ] | % 59
		b16 [ a b cis d b ] <<{g [ b (cis d e fis) ]} \\ {fis, s s4 }>> | % 60
		<<{g'8 fis g} \\ {e,8 s s} \\ {b' s s}>> b'16 [ (cis d8) b ] | % 61
		<<{g8 [ fis g ]} \\ {d, s s} \\ {b' s s}>> e16 [ fis g e fis g ] | % 62
		cis,,16 [ (e a cis e g) ] \clef tenor e' [ d cis d e cis ] | % 63
		g'16 [ (fis e fis g e) ] cis' [ b a b cis a ] | % 64
		<<{d16 [ a d a d a ] a8 [ a a ]} \\ {fis8 fis fis fis16 d fis d fis d}>> \clef bass | % 65
		<<{d8 [ d d ] g, [ g g ]} \\ {b16 g b g b g e cis e cis e cis}>> \clef tenor | % 66
		fis,16 [ a'' (g fis e d) ] a [ g' (fis e d cis) ] \clef bass | % 67
		d16 [ a fis d a fis ] d4 % 68
    }
}
