\version "2.18.2"

melodyOne =  \relative fis' {
    \key d \major
    \time 4/4
    \set Staff.midiInstrument = "viola"
    
	\repeat volta 2 {
		\partial 2  \clef treble fis4 fis| % 0
		fis4 e8 [ d ] e [ fis ] g4 | % 1
		d8 [ (cis b a) ] a'4 a | % 2
		a4 b8 [( a )] g [(fis e fis)] | % 3
		g8 [(fis e d) ] fis4 fis | % 4
		fis4 e8 [ d ] e [ fis ] g4 | % 5
		d8 [(cis b a) ] d4 d | % 6
		d4 cis8 [ d ] cis [ b ] e4 | % 7
		cis2  % 8
	}
	\repeat volta 2 {
		a'4 a | % 0
		a4 b8 [ a ] g [ fis ] b4 | % 9
		a8 [ (g fis e) ] \clef alto a, [ g' (fis e) ] | % 10
		g,8 [ dis' (e g) ] a, [ (fis') b, (dis) ] | % 11
		e,8 [ b' (e fis) ] g4 g | % 12
		cis,,8 [ e a b ] cis [ d e fis ] | % 13
		g8 [ (fis e d) ] cis [ (d e) b ] | % 14
		ais8 [ (e') b (d) ] e, [ (cis') fis, (ais) ] | % 15
		b2 d4 d | % 16
		d4 cis8 [ (b) ] cis [ (d) ] e4 | % 17
		d8 [ (cis b a) ] b [( cis d cis) ] | % 18
		e8 [ (d) fis (e) ] g [ (fis) ] a4 | % 19
		\appoggiatura fis8 e2 \clef treble fis4 fis |  % 20
		fis4 e8 [ d ] e [ fis ] g4 | % 21
		d8 [ (cis b a) ] a'4 a | % 22
		a4 b8 [ (a) ] g [ (fis e fis) ] | % 23
		g8 [ (fis e d) ] fis4 fis | % 24
		fis8 [ (a g fis) ] e [ (d cis b) ] | % 25
		cis8 [ b' (a g ] fis [ e d cis) ] | % 26
		b8 [ a ] a'4 fis e8 [ d ] \clef alto | % 27
		d2 % 28
	}
}

melodyTwo =  \relative d {
	\repeat volta 2 {
		\partial 2  d4 s4  | % 0
		g,4 s4 g'4 s4 | % 1
		e2 g,4 s4 | % 2
		fis'4 s4 a4 s4 | % 3 
		d,4 s4 d4 s4 | % 4
		g,4 s4 g'4 s4 | % 5
		s2 fis4 s4 | % 6
		e4 s4 e4 s4 | % 7
		a,2 % 8
	}
	
	\repeat volta 2 {
		fis'4 s4 | % 0
		b,4 s4 b'4 s4 | % 9
		e,4 s2. | % 10
		s1 | % 11
		s2 e4 d4 | % 12
		s1 | % 13
		d4 s2. | % 14
		s1 | % 15
		b2 b4 a4 | % 16
		gis4 s2. | % 17
		a4 s2. |  % 18
		s1 | % 19
		a'2 d,4 s4 | % 20
		g,4 s4 g'4 s4 | % 21
		e2 g,4 s4  | % 22
		fis'4 s4 a4 s4 | % 23
		d,4 s4 b4 s4 | % 24
		g4 s2. | % 25
		e'8 s8 s2. | % 26
		s4 fis4 a2 | % 27
		d,,2  % 28
    }
}

melodyThree =  \relative a {
	\repeat volta 2 {
		\partial 2  a4 s4 | % 0
		<d, b'>4 s4 b'4 s4 | % 1
		s2 <e, cis'>4 s4 | % 2
		d'4 s2.  | % 3
		a4 s4 a4 s4 | % 4
		<d, b'>4 s4 b'4 s4 | % 5
		s1 | % 6
		s1 | % 7
		e,2 % 8
	}
	\repeat volta 2 {
		cis'4 s4 | % 0
		<fis, dis'>4 s2. | % 9
		b4 s2. | % 10
		s1 | % 11
		s2 b4 b | % 12
		s1 | % 13
		a4 s2. | % 14
		s1 | % 15
		fis2 fis4 fis | % 16
		e4 s2. | % 17
		e4 s2. | % 18
		s1 | % 19
		s2 a4 s4 | % 20
		<d, b'>4 s4 b'4 s4 | % 21
		s2 <e, cis'>4 s4 | % 22
		d'4 s2.| % 23
		a4 s4 <d, b'>4 s4 | % 24
		<d b'>4 s2. | % 25
		s1 | % 26
		s4 d'4 s2 | % 27
		<a, fis'>2 % 28
	}
}

gavotteI = << \melodyOne \\ \melodyTwo \\ \melodyThree >>

