\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
    \repeat volta 2 {
	\tempo  \markup \column  { Andante }
        R1*2/4 | % 1
        r16 d16 [ d ( e ) ] e ( [ fis ) fis ( g ) ] | % 2
        g4 ~ g16 [ a bes c ] | % 3
        d16 [ a a32 gis a16 ] \TDnk d,4 ~ | % 4
        d8 [ es16 ( f ) ] es ( [ d ) d ( c ) ] | % 5
        bes8 r8 r8 c8 | % 6
        g'32 [ a fis16 g a ] bes [ c d c ] | % 7
        bes16 [ \grace a16 g16 \TDnj d8 ~ ] d8 [ es ] | % 8
        d8 r8 r16 es16 [ d ( c ) ] | % 9
        bes16 ( [ c ) c ( d ) ] d ( [ es ) es ( d ) ] | % 10
        d8 r8 r8 a'8 | % 11
        bes8 [ d,16 \TUpo e ~ ] e [ f8 g16 ] | % 12
        a8 [ bes, ] c [ a' ] | % 13
        r8 g32 [ a g16 ~ ] g [ g8 g16 ~ ] | % 14
        g16 [ f32 g32 a16 bes ] a [ f cis8 ] | % 15
        r8 g'8 ~ g16 [ fis32 e fis8 ] | % 16 
	
    }
  
    \repeat volta 2 {
        R1*2/4 | % 17
        r8 es'8 [ d c ] | % 18
        g'16 [ g,8 \TUpc as16 ~ ] as  [ bes8 c16 ] | % 19
        bes8 [ f' ] g [ d ] | % 20
        es16 [ d c8 ] r16 bes8 [ c16 ] | % 21
        d16 [ bes f d ] es [ f g as ] | % 22
        bes2 ~ | % 23
        bes16 [ c32 d es d c16 ] d [ es32 f es f g16 ] | % 24
        f8 r8 r4 | % 25
        r16 c,16 [ c ( d ) ] es [ e g, e' ] | % 26
        fis4 ~ fis16 [ g a bes ] | % 27
        c16 [ bes a g ] fis [ g \TUpc fis8 ~ ] | % 28
        fis16 [ a g8 ] r8 c,8 | % 29
        g8. [ a16 ] bes [ c d e ] | % 30
        fis16 [ g a fis ] g [ fis e32 d \TUpc c'16 ~ ] | % 31
        c16 [ fis, g a ] bes [ c d8 ] | % 32
    }
}
