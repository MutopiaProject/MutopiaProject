\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
    \repeat volta 2 {
        r16 g16 [ g ( f ) ] f ( [ es ) es ( d ) ] | % 1
        \Tl d4 ~ d16 [ c bes a ] | % 2
        g16 [ cis cis32 d cis16 ] g'4 ~ | % 3
        g8 [ fis16 e ] fis( [ g) g( a) ] | % 4
        bes8 r8 r8 a'8 | % 5
        d,32 [ c es16 d c ] bes [ a g a ] | % 6
        bes16 [ d g8 ~ ] g [ fis ^\prallprall ] | % 7
        g8 r8 r16 fis,16 [ g a ] | % 8
        bes16 ( [ a ) a ( g ) ] g ( [ fis ) fis ( g ) ] | % 9
        g8 r8 r8 c,8 | % 10
        bes8 [ g'16 \TDno f ~ ] f [ e8 d16 ] | % 11
        cis8 [ bes' ] a [ cis, ] | % 12
        r8 d32 [ cis d16 ~ ] d [ d8 d16 ] ~ | % 13
        d16 [ e32 d cis16 b ] cis [ e a8 ] | % 14
        r8 d, ~ d16 [ e32 f e d e16 ] | % 15
        d4 r4  | % 16
	
    }
  
    \repeat volta 2 {
        r8 fis'8 [ g a ] | % 17
        d,16 [ d'8 c16 ~ ] c [ bes8 a16 ] | % 18
        bes8 [ es, ] d [ g ] | % 19
        f16 [ g as8 ] r16 bes8 [ as16 ] | % 20
        g16 [ bes es g ] f [ es d c ] | % 21
        bes2 ~ | % 22
        bes16 [ as32 g f g as16 ] g [ f32 es f es d16 ] | % 23
        es8 r8 r4 | % 24
        r16 as,16 [ as g ] fis [ f d' f, ] | % 25
        es4 ~ es16 [ d c bes ] | % 26
        a16 [ bes c d ] es [ d es8 ~ ] | % 27
        es16 [ c d8 ] r8 a'8 | % 28
        d8. [ c16 ] bes [ a g f ] | % 29
        es16 [ d c es ] d [ e fis32 g a16 ~ ] | % 30
        a16 [ es' d c ] bes [ a g fis ] | % 31
        g4 r4 | % 32
    }
}

