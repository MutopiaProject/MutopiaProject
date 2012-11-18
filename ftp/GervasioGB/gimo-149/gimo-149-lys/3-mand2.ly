\version "2.16.0"

IIIMandII =  \relative c'' {
  \clef "treble"
  \time 3/8
  \key d\major

  \repeat "volta" 2 {
  \partial 8 fis8 |
  %1 page 9
  <d d,> d fis | <d d,> d fis | e cis e | <d d,>4 fis8 | <d d,> <d d,> fis |
  <d d,> d fis | e cis e | <d d,> r d |
  %9 page 10
  cis cis d | cis cis e | cis cis d | cis cis a | b b gis | a r cis | d b d |
  %16 Note: bar 16 is // in the manuscript, notes copied from mandolin 1.
  gis e cis | cis4 cis8 | d b d | cis a cis | b gis b | a16 a a a a a |
  a a a a a a | a a a a a a | a a a a a a | a a a a a a | b d cis b e gis, |
  %27
  a b cis d e d | a4 d8 | b4 e8 | cis4 r8 | a4 d8 | cis a cis | b gis b |
  %34 page 11
  a8 e'16 e e e | e8 cis16 cis cis cis | cis8 a16 a a a |
  a8 <<{ e16[ e e e] | e4} {a,16 a a a | a4}>> 
  }

  \repeat "volta" 2 {
  a'8
  %39 Note: Bars 39,40,42,43,44 marked // in manuscript, here copied from mandolin 1.
  <<{cis cis e | cis cis e} \\ {a, a cis | a a cis}>> | b gis b |
  <<{cis cis e | cis cis e | cis cis e} \\ {a, a cis | a a cis | a a cis}>> |
  %45
  b gis b | a r e' | <d d,> d fis | <d d,> d fis | e cis e | <d d,> d fis |
  <d d,> d fis | <d d,> d fis | e cis e | d4 r8 |
  %55 page 12
  % Note: These two bars do not exist in the manuscript, instead the following six bars are shifted left two bars, and the following two bars are empty.
  d16 d, d' d, d' d, | a'4 g8 |
  e'16 b e b e b | b4 a8 | e' cis e | a,4 d8 | g fis e | d4 r8 |
  d16 d, d' d, d' d, | a'4 g8 | d'16 b e b e b | b4 a8 |
  %67 Note: Bar 66 copied from mandolin 1 (marked // )
  g e cis | a' fis d | g fis e | d16 d d d d d | d d' d, d' d, d' |
  d,8 d d | d d d | d d d | d d d | d4 d'8 | cis g' e |
  %78 page 13
  a,4 a'8 | g8 fis e | d4 d8 | 
  %81 Note: 81,82 copied from mandolin 1.
  g e cis | a' fis d | g fis e | d fis16 fis fis fis | fis8 d16 d d d |
  d8 a16 a a a | a8 fis16 fis fis fis | fis8 d16 d d d | d8 fis16 fis fis fis |
  %90
  d8 d' fis | d d fis | <d d,> <d d,> <d d,> | <d fis, a,>4 r8 \bar "|."
  }
}
