\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    b16 [ g d g ] b [ g d' b ] g [ b a g ] | % 1
    d'16 [ a fis a ] \stemDown d [ a a' fis ] d [ fis e d ] | % 2
    g16 [ e b e ] g [ e b' g ] e [ b' a g ] | % 3
    d'16 [ a fis a ] d [ a a' fis ] d [ fis e d] | % 4
    g16 [ d b d ] g [ d b' g ] d [ f e d ] | % 5
    e16 [ c g c ] e [ c g' e ] c [ d c b ] | % 6    
    a16 [ fis d fis ] a [ fis d' a ] fis [ a g fis ] | % 7
    g16 [ d b d ] g [ d b' g ] d' [ c b a ] | % 8
    g8 r8 r4 r4 | %9

    r16 a'32 [ g a16-. fis32 e ] fis16-. [ d32 cis d16-. b32 a ] b16-. [ g32 fis g16-. e32 d ] | % 10
    e16-. r16 r8 r4 r4 | %11

    R1*3/4 | %12

    <<
      { fis,8-. r8 d''8-. r8 c8-. r8 } | \\
      { fis,,32 [ d'32  e fis a fis e d ] d'32 [ d,32 e fis a fis e d ] c'32 [ d,32 e fis a fis e d ] } | 
    >> % 13
    <<
      { b'8-. r f,-. r e-. r } | \\
      { b''32 [ g,32  a b d b a g ] f32 [ g32 a bes d bes a g ] e32 [ gis32 a b d b a gis ] | } 
    >> %14

    a16 [ cis32 b cis16 fis,32 e ] fis16 [ b32 a b16 e,32 d ] e16 [ a32 g a16 d,32 cis ] | % 15
    d32 [ e fis g  a g fis e ] d16 [ fis a, d ] d,8 r8 | % 16
 } 

 \repeat volta 2 {
    d'8 r8
    \stemDown \once \override Script #'padding = #1 c''4.\prallprall ~ c16 [ b32 c ] | % 17
    b8 r8 \stemUp \TDn f,4\mordent~ f16 [ a g f ] | % 18
    e8 r8  \stemDown fis'8 ([ a8  ] dis,8 [ e16 fis ) ] | % 19
    b,8 r8 \stemUp
    a,4.\downprall~ a16 [ g32 a ] | % 20
    g8 [ e g b g e ] | % 21
    a8 [ f a c b a ] | % 22
    b8 [ dis  fis b ] b, [ e16 dis] | % 23
    e8 [ g ] \stemDown b [ e16 dis e8 ] r8 | % 24

    \stemUp r16 c,32 [ b c16-. e32 d ] e16-. [ a32 gis a16-. c32 b ] \stemDown c16-. [ e32 d e16-. a32 g ] | % 25

    a16-. r16 r8 r4 r4 | %26

    \stemUp r16 a,,32 [ g a16-. c32 b ] c16-. [ e32 d e16-. a32 g ] \stemDown a16-. [ c32 b c16-. fis32 e ] | % 27

    fis16-. [ a32  g a16-. d32 c ] d16-. [ fis32 e fis16-. g32 fis ] g16-. [ a32 g a16-. b32 a ] | % 28

    b8-. r8 r4 r4 | %29
    R1*3/4 | % 30
    \stemUp fis,,16 [ a32 g a16 d32 c ] d16 [ g,32 fis g16 c32 b ] c16 [ fis,32 e fis16 b32 a ] | % 31
    b16 [ g fis g ] \stemDown
    b32 [ a g16 d'32 c b16 ] g'8 r8 | % 32
 }
}

