\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    g,8\mordent r8
    \tieUp  \once \override Script #'padding = #1
    g''4.\upprall^~ g16 [ fis32 g ] | % 1
    a8 r8 \stemUp \tieDown \TDn fis,,4\mordent ~ fis16 [ a g fis ] | % 2
    e8 r8 \stemDown e''8 ([ d8  ] cis8 [ d16 e ) ] | % 3
    fis,8 r8 \stemUp c,4.\prallprall c16 [ b32 c ] | % 4
    b8 [ g b d g b, ] | % 5
    c8 [ e g c e, g ] | % 6
    fis8 [ a d, fis a c ] | % 7
    \stemDown b8 [ g b d g ] r8 | % 8

    r16 b'32 [ a  b16-. g32 fis ] g16-. [ e32 d  e16-. cis32 b ]  cis16-. [  a32 g a16-. fis32 e ]  | %9

    fis16-. r16 r8 r4 r4 | %10

    r16 g'32 [ fis g16-. e32 d ] e16-. [ b32 a b16-. g32 fis ] g16-. [ e32 d e16-. cis32 b ] | % 11
    \stemUp cis16-. [ g32 fis g16-. e32 d ] e16-. [ cis32 b cis16-. a32 g ] a16-. [ g32 fis g16-. fis32 e ] | %12

    fis8-. r8 r4 r4 | % 13
    R1*3/4 | % 14
    \stemDown fis''16 [ e32 d e16 a32 g ] a16 [ d,32 cis d16 g32 fis ] g16 [ cis,32 b cis16 fis32 e ] | % 15
    fis16 [ d cis d ]
    fis32 [ e d16 a'32 g fis16 ] d'8 r8 | % 16
 } 
  
 \repeat volta 2 {
    fis,16 [ a d a ] fis [ a d, fis ] a [ fis g a ] | % 17
    d,16 [ g b g ] d [ g  b, d ] g [ b, c d ] | % 18
    g,16 [ c e c ] a [ c fis, a ] c [ fis, g a] | % 19
    \stemUp dis,16 [ fis b fis ] dis [ fis b, dis ] fis [ dis e fis ] | % 20
    b,16 [ e g e ] b [ e g, b ] e [ dis e g ] | % 21   
    c,16 [ f a f ] c [ f a, c ] f [ e f a ] | % 22
    dis,16 [ fis a fis ] dis [ fis b, dis ] fis, [ a g fis ] | % 23
    g16 [ b e b ] g [ b e, fis ] g [ e g b ] | % 24

    e16 r16 r8 r4 r4 | %25

    r16 b32 [ a b16-. d32 c ] d16-. [ g32 fis g16-. b32 a ] \stemDown b16-. [ d32 c d16-. g32 fis ] | % 26

    g16-. r r8 r4 r4 | %27
    R1*3/4 | %28

    <<
      { b,8 r8 d8 r8 f8 r8  }  | \\
      { b,32 [ g' a b d b a g ] d [ g a b d b a g ] f [ g a b d b a g ] } | %29
    >>
    <<
      { c8-. r8 a,8-. r8 e8-. r8 } | \\
      { c''32 [ e, f g c g f e ] a, [ fis' g a c a g fis ] e, [ g' a bes cis bes a g ] } | %30
    >>

    d'16 [ c32 b c16 b32 a ] b16 [ bes32 a bes16 a32 g ] a16 [ d32 c d16 g,32 fis ] | % 31
    g32 [ a b c  d c b a ] g16 [ b d, g ] g,8 r8 | % 32
 }
}

