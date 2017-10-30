\version "2.18.0"

 guitarthree = \relative c  {
 \set Staff.instrumentName = "Gtr3 "
    \repeat volta 2 {
       g'8 [ g, ] r8 g ~ | % 1
        g16 [ fis32 e fis8 ] r8 d8 | % 2
        es8 [ e ] r8 es'! | % 3
        d16 [ cis d8 ] r16 c16 [ bes a ] | % 4
        \SDn g32 ( [ fis g16 ) c g ] c ( [ fis ) fis ( g ) ] | % 5
        g16 [ fis g a ] d,8 [ es ] | % 6
        bes8 [ bes'16 c ] d8 [ d ] | % 7
        g,8 [ bes,32 c d bes ] g8 r8 | % 8
        r16 fis16 [ g a ] bes8 [ a ] | % 9
        g16 [ fis8 e16 ] fis32 [ a g8 fis16 ] | % 10
        g16 [ a bes a ] g32 [ a g16 f32 g f16 ] | % 11
        e16 [ f g e ] cis' [ d e cis ] | % 12
        f,32 [ e d16 ] g4 fis8 | % 13
        bes8 [ e, ] a [ cis ] | % 14
        d16 [ d,16  f16 e ] f8 [ a ] | % 15
        d16 [ c32 bes a g a16 ] d,4 | % 16
    }

    \repeat volta 2 {
        d'16 [ ( es' ) es ( d ) ] d [ ( c)  c ( bes ) ] | % 17
        bes16 [ ( fis ) fis ( g ) ] g [ ( d ) d8 ~ ] | % 18
        d16 [ c32 bes c16 f, ] f' [ bes, es8 ~ ] | % 19
        es16 [ d32 c d c bes16 ] es [ g, as bes ] | % 20
        c16 [ g c bes ] as [ g as8 ~ ] | % 21
        as16 [ as' bes as ] g [ f es f ] | % 22
        g16 [ as bes8 ] bes,8. [ as'16 ] | % 23
        g16 ( [ f ) f ( es ) ] f ( [ g ) g ( as ) ] | % 24
        c,8 [ b ] r16 a16 [ b g ] | % 25
        c8 [ c' ] r8 c,8 ~ | % 26
        c16 [ d es bes ] a [ bes c g ] | % 27
        g8 [ ( fis16)  g ] a [ bes32 c d es c16 ] | % 28
        bes32 [ d c16 bes32 c a16 ] g32 [ a f16 es32 f d16 ] | % 29
        c'16 [ es,32 d es16 fis ] g8 [ r16 c16 ] | % 30
        d8 r16 es16 c8 [ d ] | % 31
        g16 [ d32 c bes c a16 ] g4 | %32
    }
}


