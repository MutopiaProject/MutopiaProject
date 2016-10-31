\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 1 {
    b32 [ c b a \TUpa b8 ~ ] b32 [ fis g a b16 c ] \appoggiatura d32  c16 [ b16 a g ] | % 1
    d'32 [ e d cis \TUpa d8 ~ ] d32 [ cis d e fis16 g ]
    \SUpb \appoggiatura  a32 g16 [ fis e d ] | % 2
    g32 [ a g fis g8 ~ ] g32 [ fis e fis g16 e ] a, [ b' a g ] | % 3
    \grace g32 fis32 [ e fis e d8 ~ ] d32 [ cis d e fis16 g ] a [ b32 c b16 a ] | % 4
    g32 [ f e16 \once \override Script #'padding = #1
    \TUpc f8 ~ \mordent ] f32 [ d g a b c d16 ] c [ b a g ] | % 5
    f32 [ e d16
    \grace d16 \TUpo e8 ~ ] e32 [ d c b c d e16 ] d [ g e c ] | % 6
    b32 [ a g16 \TDne a8 ~ ] a32 [ g a b c fis, g a ] d, [ fis e d a' g fis c' ] | % 7
    c32 [ b a16 \TUpa b8 ~ ] b32 [ a g fis g b d fis ] g [ fis32 e d fis a b c ] | % 8
    b32 [ a g16 ~] g32 [ fis \TUpb e16 ~] e32 [ dis \TUpb e16 ~ ] e32 [fis g16 ~ ] g32 [ a b16 ~ ] b32 [ g fis e ] | % 9
    a32 [ g fis16 ~ ] fis32 [ e \TUpa d16 ~ ] d32 [ cis \TUpa d16 ~] d32 [ e fis16 ~ ] fis32 [ g a16 ~ ] a32 [ fis e d ] | % 10
    g32 [( a b a ) g16-. fis-. ] e32 [( fis g fis ) e16-. d-. ] cis32 [ (d e d ) cis16-. b-. ] | % 11
    a4. ~ \prall a32 [ cis b a ] b [ cis d e fis16 g ] | % 12
    a32 [ d, (cis d e d cis d ) ] a [ d g, d' fis, d' e, d' ] fis, [ d' a d fis, d' d, c' ] | % 13
    b32 [ d ( cis d e d cis d ) ] b [ d a d g, d' fis, d' ] g, [ d' b d g, d' e, d' ] | % 14
    cis32 [ g fis g a g fis g ] e' [ cis b cis d cis b cis ] g' [ e d e a g fis e ] | % 15
    fis16 [ cis cis d ] d [ g, <g cis,> fis ] <fis d> 4 | % 16
    }
  
 \repeat volta 1 {
    fis'32 [ g fis e fis8 ~ ] fis32 [ e fis g a16 b ]
    \grace  c32 b16 [ a g fis ] | % 17
    g32 [ a g fis g8 ~ ] g32 [ fis, g a b16 c ] \grace  d32 c16 [ b a g ] | % 18
    e'32 [ fis e dis \TUpo e8 ~ ] e16 [ gis gis a ] a [ b b c ]  | % 19
    e,32 [ dis cis16 \TUpi dis8 ~ \mordent ] \TUpa dis8 ~ [ dis32 dis e fis ] e [ dis cis b a g a fis' ] | % 20
    g,32-. [ e' ( dis e f e dis e ]) fis [ e g e a e b' e, ] c' [ e, d' e, c' e, b' e, ] | % 21
    c'32-. [ e, ( dis e f e dis e ]) c' [ e, b' e, a e g e ] fis [ e g e a e dis cis ] | % 22
    dis32-. [ a' ( g a b a g a )] b,-. [ g' ( fis g a g fis g ) ] a,-. [ fis'( e fis g a g fis ) ] | % 23
    g16  [( dis ) dis  (e ) ] e [( a,) a ( g ) ] \TUp g8 ~ \mordent [ g32 b c d ] | % 24
    e32 [ f e dis \TUpo e8 ~ ] e16 [ a,
    \SUpb \appoggiatura  b32  a16 g ] \appoggiatura  a32  g16 [ fis fis e' ] | % 25
    d32 [ e d cis \TUpa d8 ~ ] d16 [ g, \appoggiatura  a32 g16 f ] \appoggiatura  g32 f16 [ e e d' ] | % 26
    c32 [ b \TDne a16 ~ a32 g \TDno fis16 ~ ] fis32 [ e d16 ~ d32 e \TDno fis16 ~ ] fis32 [ g \TDne a16 ~ a32 b \TUpe c16 ~] | % 27
    c32 [ d c b c g' fis e ] fis [ b a g a d c b ] c [ b a g fis e d c ] | % 28
    b32-. [ g' ( fis g a g fis g ) ] c,-. [ fis ( e fis g fis e fis ) ] d-. [ f (e f g f e d ) ] | % 29
    e32-. [ c ( b c d c b c ) ] d-. [ b ( a b c b a b) ] cis-. [ bes ( a bes c bes a g ) ] | % 30
    fis32-. [ c' ( b c d c b c )] fis-. [ c ( b c d c b c ) ] a'-. [ c, ( b c d c b a ) ] | % 31
    b16 [ ( fis ) fis (g) ] g [ (c,) c  (b) ] b4  | % 32
    }
}

