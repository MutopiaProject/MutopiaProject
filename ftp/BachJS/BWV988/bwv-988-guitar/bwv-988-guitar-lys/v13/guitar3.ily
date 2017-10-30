\version "2.18.0"

 guitarthree = \relative c  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 2 {
	g4. g8 [ fis e ] | % 1
        fis4. b8 [a  b ] | % 2
        e,4. a8 [ g  a ] | % 3
        d4. e8 [ d  c ] | % 4
        b4. g8 [a  b ] | % 5
        c4. a8 [ b  c ] | % 6
        d4. d8 [ c  d ] | % 7
        g,4. g8 [ b  d ] | % 8

 \pageBreak

        g,4. g8 [ fis e ] | % 9
        fis4. b8 [ a  b ] | % 10
        e,4. fis'8 [ e d ] | % 11
        cis4. e8 [ a, g ] | % 12
        fis8 [ fis16. e32 ] fis8 [ a d, fis ] | % 13
        g8 [ g16. fis32 ] g8 [ b e, g ] | % 14
        a8 [ a16. g32 ] a4. a8 | % 15
        d,2. | % 16
    }

 \pageBreak

  
    \repeat volta 2 {
	d'4. c16 [ b  c8  a ] | % 17
        b4. d8 [ g, b ] | % 18
        c4. b8 [ c a ] | % 19
        b4. b8 [ cis dis ] | % 20
        e,8 [ g'16 a ] g8 [ fis ] e4 | % 21
 \noBreak
        a,8 [ a'16 g ] a8 [ c a fis ] | % 22
        b,8 [ dis  e  g ] b4 | % 23
        e,2 ~ e8 [ d ] | % 24

 \pageBreak

        c4 r8 c'8 [ b ais ] | % 25
        b8 [ b,] r8 b' [ a  gis ] | % 26
        a8 [ a, ] r4 r4 | % 27
 \noBreak
       r8 a8 [ d, fis  a  d ] | % 28
       g,8 [ g' a b ] r8 g8 | % 29
 \noBreak
        c,8 [ e  f  fis ] g [ fis16 e ] | % 30
        d4. fis8 [ e  d ] | % 31
        g,4 r4  g4 | % 32
 
    }
}
