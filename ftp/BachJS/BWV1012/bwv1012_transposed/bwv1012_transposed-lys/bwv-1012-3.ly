\version "2.18.2"

courante =   \relative a, {
    \key d \major
    \time 3/4
    \set Staff.midiInstrument = "cello"
    
	\repeat volta 2 {
		\partial 8 d'8 \ff | % 0
		d8 [ d,16 (e fis8) d  a' fis ] \clef tenor | % 1
		d'8 [ a fis' d a' c, ] | % 2
		b8 [ e16 (fis g8) e b' d, ] | % 3
		cis8 [ a16 (b cis8) a e' g, ] \clef bass | % 4
		fis8 [ d16 (e fis8) d a' c, ] | % 5
		b8 [ g16 (a b8) g e' g, ] | % 6
		fis8 [ a d g, a cis ] | % 7
		d4 d,8 [ fis' ] g16 [ (fis e d) ] | % 8
		e8 [ cis16 (d e8) a, a' e ] | % 9
		fis8 [ d16 (e fis8) d a' fis ] | % 10
		d'8 [ b16 (cis d8) b fis' a, ] | % 11
		gis8 [ b ] e, [ cis'16 (d ] e [ d cis b) ] | % 12
		cis8 [ a ] e, [ d''16 (e ] fis [ e d cis) ] | % 13
		d8 [ b ] e,, [ cis''16 (d ] e [ d cis b) ] | % 14
		cis16 [ (b a gis) ] a [ (gis a b) ] cis [ (b a gis) ] | % 15
		a16 [ (gis fis e) ] fis [ (e fis gis) ] a [ (gis fis e) ] | % 16
		fis16 [ (e d cis) ] d [ (cis d e) ] fis [ (e d cis) ] | % 17
		d16 [ (cis b a) ] b [ (cis d e) ] fis [ (gis a fis) ] | % 18
		gis16 [ (fis e d) ] e [ (fis gis a) ] b [ (cis d b) ] | % 19
		cis8 [ a16 (b ] cis8) a e' cis ] | % 20
		a'8 [ fis,16 (gis a8) fis cis' a ] | % 21
		a'8 [ cis,,16 (d e8) cis a' e ] | % 22
		fis16 [ (e d cis) ] d [ (b gis' fis) ] a [ (gis fis e) ] | % 23
		b'16 [ (a gis fis) ] gis [ (e cis' b) ] d [ (cis b a) ] \clef tenor | % 24
		e'16 [ (d cis b) ] cis [ (a fis' e) ] g [ (fis e d) ] | % 25
		b'8 [ gis16 (a b8) e, gis d ] \clef bass | % 26
		cis8 [ a16 (b cis8) e, gis d ] | % 27
		a2 r8  % 28
    }
	
	\repeat volta 2 {
		\clef tenor a''8 | % 
		a8 [ e16 (d cis8)  e a, cis ] \clef bass | % 29
		e,8 [ a cis, e a, g ] | % 30
		fis8 [ g'16 (fis e8) d' cis g' ] | % 31
		fis8 [ d ] d, [ fis'16 (e ] g [ fis e d) ] | % 32
		e8 [ cis ] a, [ e''16 (d ] fis [ e d cis) ] | % 33
		d8 [ fis, ] b, [ cis16 (d) ] e [ (d e fis) ] | % 34
		e16 [ (fis g fis) ] g [ (a) g (a) ] b [ (cis d b) ] | % 35
		cis8 [ g ] a, [ b16 (cis) ] d [ (cis d e) ] | % 36
		d16 [ (e fis e) ] fis [ (g) fis (g) ] a [ (b cis a) ] | % 37
		b8 [ fis ] g, [ a16 (b) ] cis [ (b cis d) ] | % 38
		cis16 [ (d e d) ] e [ (fis) e (fis) ] g [ (a b g) ] | % 39
		e16 [ d' cis b ] ais [ g' (fis e) ] \clef tenor b' [ ais gis fis ] | % 40
		b8 [ a16 (g ] fis [ e d cis) ] d [ (cis) e (ais,) ] | % 41
		b4 b,8 [ b'16 (cis d8)  b ] | % 42
		gis'8 [ d8 ] b'8 [ a16 (gis ] a [ gis fis e) ] | % 43
		a8 [ cis,16 (d e8) a, g' cis, ] | % 44
		fis8 [ c ] a' [ g16 (fis] g) [fis e d ] | % 45
		g8 [ b,16 (c d8) g, b fis ] \clef bass | % 46
		e8 [ cis'16 (d e8) a, g' d, ] | % 47
		cis8 [ cis'16 (d e8) a, g' a,, ] | % 48
		d8 [ fis'16 (e) ] g [ (fis e d) ] e [ (d cis b) ] | % 49
		cis16 [ (b a g) ] a [ (g fis e) ] fis [ (e d cis) ] | % 50
		d8 [ b16 (cis) ] d [ (e fis e) ] g [ (fis) a (gis) ] | % 51
		a8 [ cis,16 (d) ] e [ (fis g fis) ] a [ (gis) b (ais) ] | % 52
		b8 [ d,16 (e fis8) b dis, b' ] | % 53
		c8 [ e,16 (fis g8) c e, cis' ] | % 54
		d8 [ fis,16 (g ] a8) [ a16 (b ] c8 ) [ a'16 (c,) ] | % 55
		g,8 [\clef tenor  b'16 (a ] b8) [ b16 (cis ] d8) [ b'16 (d,) ] | % 56
		cis16 [ g cis e ] a8 [ g,16 (fis ] a [ g fis e) ] | % 57
		fis8 [ d' ] a' [ (fis,16 e ] g [ fis e d) ] | % 58
		e8 [ cis' ] a'16 [ g, (fis e) ] d [ (e fis g) ] | % 59
		fis16 [ (g a b) ] a [ (b a g) ] fis [ (g a b) ] | % 60
		a16 [ (b cis d) ] cis [ (d cis b) ] a [ (b cis d) ] | % 61
		cis16 [ (d e fis) ] e [ (fis e d) ] cis [ (d e fis) ] | % 62
		e16 [ (fis g a) ] g [ (fis e d) ] cis [ (b a g) ] \clef bass | % 63
		fis8 [ d16 (e ] fis8) [ d8 ] a'8 [ fis8 ] | % 64
		d'8 [ b,16 (cis ] d8) [ b8 ] fis'8 [ d8 ] | % 65
		d'8 [ fis,,16 (g ] a8) [ fis8 ] d'8 [ a8 ] | % 66
		b16 [ (a g fis) ] g [ (e cis' b) ] d [ (cis b a) ] | % 67
		e'16 [ (d cis b) ] cis [ (a) fis' (e) ] g [ (fis e d) ] | % 68
		a'16 [ (g fis e) ] fis [ (d) b' (a) ] c [ (b a g) ] | % 69
		e'8 [ cis16 (d ] e8) a,8 cis8 g8 ] | % 70
		fis8 [ d16 (e fis8) a,8 cis8 g8 ] | % 71
		d2 r8 s8 | % 72
    }
}

