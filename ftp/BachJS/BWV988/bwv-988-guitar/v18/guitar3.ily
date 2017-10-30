\version "2.18.0"

 guitarthree = \relative c'  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 1 {
    %1-4
    r4 g8 a b4 c |
    d4 d, d'2 |
    r4 e8 d cis4 a |
    d4 d, d' c |
    % 5-8
    b4-\prallprall a8 b c4 c,4 |
    c'4 b8 c d4 a |
    d,4 fis8 e fis4 d |
    g4 d g, g'8 a |
    % 9-12
    b4 a8 b cis4 b8 cis
    d4 cis b a
    g fis e d
    cis4 b8 cis d4 cis8 d
    % 13-16
    b4 a8 b cis4 b8 cis
    ais4 gis8 ais b a g fis
    g4 e a a
    d, a' d2
  }       

 \repeat volta 1 {
    r4 d8 e fis4 d
    g4 g, g' a8 b
    c4 b a g8 a
    b4. a8 g fis e dis
    e4 e'8 d c4 b
    a4 b8 c fis,4 g8 a
    dis,4 e8 fis b,4 cis8 dis
    e4 e'8 dis e4 fis8 g
    a4 g8 a fis4 e8 fis
    g4 fis e d
    c4 b a g
    fis4 e8 fis g4 fis8 g
    e4 d8 e fis4 e8 fis
    dis4 cis8 dis e d c b
    c4 a d d,
    g d' g2
 }
}


