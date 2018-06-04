\version "2.18.2"

melodyOne =  \relative a {
    \key d \major
    \time 4/4
    \set Staff.midiInstrument = "viola"
    
	\repeat volta 2 {
		\partial 2 \clef treble <a fis'>8 [e'] fis4 | % 0
		a,4 a b cis | % 1
		d8 [cis d e] <a,, fis' d'> [ e'' ] fis4 | % 2
		a,4 a b cis | % 3
		d2 % 4
	}
	\repeat volta 2 {
		\clef alto a8 [ g] a4 | % 0
		b4 d d8 [(c) b (a)] | % 5
		b2 a4 d | % 6
		b4 d cis8 [b cis d ] | % 7 
		<cis e>2 \clef treble  <a fis'>8 [e'] fis4 | % 8
		a,4 a b cis | % 9
		d8 [ cis d e] <a,, fis' d'> [ e'' ]  fis4 | % 10
		a,4 a b cis | % 11
		d2 d8 [ a d e] | % 12
		fis8 [ a, g' a,] fis' [ a, e' a,] | % 13
		fis'8 [ a, a' a,] g' [ a, e' a,] | % 14
		fis'8 [ a, e' d] cis [ d e cis] | % 15
		d8 [ a b a] d [( a d) e] | % 16
		fis8 [ a, g' a,] fis' [ a, e' a,]| % 17
		fis'8 [ a, a' a,] g' [ a, e' a,] | % 18
		fis'8 [ a, e' d] cis [ d e cis] | % 19
		a2 <a fis'>8 [e'] fis4 | % 20
		a,4 a b cis  | % 21
		d8 [cis d e] <a,, fis' d'> [ e'' ]  fis4 | % 22
		a,4 a b cis_\markup { Gavotte I da Capo } | % 23
		d2 % 24
    }

}

melodyTwo =  \relative d {
	\repeat volta 2 {
		\partial 2 d8 s4. | % 0
		r4 fis4 g e | % 1
		d8 s4. d,8 s4. | % 2
		r4 fis'4 g e | % 3
		d2 % 4
	}
	\repeat volta 2 {
		\clef alto fis4 d4 | % 0
		g4 d fis d | % 5
		g4 d fis d | % 6
		g4 fis e d | % 7 
		d2 d8 s4. | % 8
		r4 fis4 g e | % 9
		d8 s4. d,8 s4.  | % 10
		r4 fis'4 g e | % 11
		d2 d | % 12
		d4 d d d | % 13
		d4 d d d | % 14
		d2 d | % 15
		d1 | % 16
		d4 d d d | % 17
		d4 d d d | % 18
		d2 d | % 19
		d2 d8 s4. | % 20
		r4 fis4 g e | % 21
		d8 s4. d,8 s4. | % 22
		r4 fis'4 g e | % 23
		d2 % 24
    }
}

gavotteII = << \melodyOne \\ \melodyTwo >>

