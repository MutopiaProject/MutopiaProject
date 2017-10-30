 guitarfour = \relative c'  {
 \set Staff.instrumentName = "Gtr4 "
    \repeat volta 2 {
	\partial 8 r8 |
        g2 fis | % 1
        e2 d4. c8 | % 2
        b2 c | % 3
        d2 g,4 r8 b'16 [ a ] | % 4
        g8 [ fis16 g ] e8 [ d16 e ] fis4. b8 | % 5
        e,4. fis16 [ g ] a4 ~ a16 [ g fis e ] | % 6
        fis4 d g g, | % 7
        a2 d,4 r8  % 8
    }

 \pageBreak

    \repeat volta 2 {
	r8 |
	d'4 c b g | % 9
	c8 [ b c a ] b4. a8 | % 10
	g8 [ e' g, e' ] a,4. ais8 | % 11
	b4 b e,4. d8 | % 12
	c'4 c b4. c16 [ b ] | % 13
	a4. b16 [ c ] d4. c16 [ d ] | % 14
	g,8 [ a b g ] c4. cis8 | % 15
	d4_\markup \column { \null \null "Aria da Capo e Fine." } d, g g'8  % 16
    }
}
