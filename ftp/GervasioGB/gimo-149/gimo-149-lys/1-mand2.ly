\version "2.16.0"

IMandII =  \relative c' {
  \clef "treble"
  \time 4/4
  \key d\major

  %1 page 2
  d16 e fis g a g fis e d4 r | d16 e fis g a g fis e d4 r | 
  g,16 a b cis d cis b a g4 r | g16 a b cis d cis b a g4 r |
  d'16 e fis g a g fis e d4 r | d16 e fis g a g fis e d4 r | 
  %7
  a16 b cis d e d cis b a4 r | a16 b cis d e d cis b a4 r |
  %9 Note: Bars 10,11,13 and 2nd halfs of bars 9,12 copied from mandolin 1 (marked // in the manuscript)
  d16 fis a d d, fis a d <fis a,>4 d,16 e fis g |
  a b a g fis g fis e d4 <fis' a, d,> |
  <g b, d,> <<e cis \\ a>> <fis' a, d,> d,16 e fis g |
  %12 page 3
  fis g fis e d e d cis d4 <fis' a, d,> |
  <g b, d,> <<e cis \\ a>> <fis' a, d,> r8 fis |
  %14
  cis16 a cis a cis a cis a cis a cis a d a d a |
  cis a cis a cis a cis a b e, b' e, b' e, b' e, |
  <<{cis'8:16_ \markup{\italic "simili"} s d: s cis2: | cis: b:} \\ {a4:16 a: a2: | g: d:}>>
  %18
  cis'16 e d cis b a gis a a e a e gis e gis e |
  <<{cis'2:8 a4: gis: | e'16 e e e e e e e e e e e e e e e} \\
    {a,2:8 e4: d: | a'16 a a a a a a a a a a a a a a a}>> |
  %21 page 4
  <<{fis'16 fis fis fis fis fis fis fis fis fis fis fis fis fis fis fis} \\
    {a, a a a a a a a a a a a a a a a}>> |
  e' b e b e b e b e b e b e b e b | <e cis a>4 r r8 fis, e b |
  a e'16 fis e8 e d b16 cis b8 b | a4 r r8 b'16 cis d cis b e, |
  %26
  r8 cis'16 d e d cis a r8 b16 cis d cis b d |
  cis4 e16 e e e e4 cis16 cis cis cis | cis4 a16 a a a a4 e16 e e e |
  e4 cis16 cis cis cis cis4 a16 a a a |
  a4 cis16 cis cis cis a cis e a a, cis e a |
  %31 page 5
  a, cis e a a, cis e a d, fis a d d, fis a d |
  e8 cis d b a16 cis e a a, cis e a |
  a, cis e a a, cis e cis d, fis a d d, fis a d |
  e8 cis d b \grace b8 a4 e'16 cis e cis |
  %35
  e cis e cis d a d a cis a cis a cis a cis a |
  cis a cis a d a d a cis a cis a g' a, g' a, |
  fis' a, fis' a, e' a, e' a, <d d,>4 fis8 g | fis e d cis d4 a16 a a a |
  %39 page 6
  b b b b cis cis cis cis <d d,>4 d,16 d d d |
  d d d d cis cis cis cis d4 a'16 a a a |
  b b b b cis cis cis cis <d d,>4 d,16 d d d |
  %42 Note: 2nd half of this bar marked //, copied from mand 1
  b b b b cis cis cis cis d4 <fis' a, d,>8 a16 g |
  fis8 fis, g e d4 d'8 fis16 e | d8 fis, g a d,4 d'8 fis16 e |
  d8 fis, g e <a d,>4 d8 fis16 e | d8 fis, g a d,16 fis a d d, fis a d |
  b8 d cis e <d d,>4 d8 fis |
  %48
  <d d,>8 fis <d d,> fis <d d,>4 r_\fermata \bar "|."
}
