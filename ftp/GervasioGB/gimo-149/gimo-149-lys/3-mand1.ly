\version "2.16.0"

IIIMandI =  \relative c''' {
  \clef "treble"
  \time 3/8
  \key d\major

  \repeat "volta" 2 {
  \partial 8 a8 |
  %1 page 9
  <fis a, d,> fis a | <fis a, d,> fis a | g e cis | <fis a, d,> fis a |
  <fis a, d,> fis a | <fis a, d,> fis a | g e cis | <fis a, d,> r fis |
  %9 page 10
  <<{<e cis> e fis | e e a | e e fis | e e cis | d d b} \\
   {g s s | cis s s | cis s s | cis s a | a4 gis8}>> | a r e' |
  %15
  fis d b | gis' e cis | a'4 e8 | fis d b | e cis a | d b gis |
  %21
   a8.[ a'16]  gis[ a] |  fis8.[ a16] gis a |  e8.[ a16]  gis[ a] |  d,8.[ a'16]  gis[ a] |
   cis,8.[ a'16]  gis[ a] |  b,8.[ a'16]  gis[ a] | a,4 e'8 | fis d b | gis' e cis |
  %30
  a'4 e8 | fis d b | e cis a | d b gis |
  %34 page 11
   a[ a'16 a]  a[ a] |  a8[ e16 e]  e[ e] |  e8[ cis16 cis]  cis[ cis] |
   cis8[ a16 a]  a[ a] | a4
  }

  \repeat "volta" 2 {
  <<e'8 \\ cis>>
  %39
  <<{cis cis e | cis cis e} \\ {a, a cis | a a cis}>> | d b gis |
  <<{cis cis e | cis cis e | cis cis e} \\ {a, a cis | a a cis | a a cis}>> |
  %45
  d b gis | a r a' | <fis a, d,> fis a | <fis a, d,> fis a | g e cis |
  <fis a, d,> fis a | <fis a, d,> fis a | <fis a, d,> fis a | g e cis | d4 d,8 |
  %55 page 12
  a'' fis d | c4 b8 | b' gis e | d4 cis!8 | g' e cis | a' fis d | b' a cis, |
  %62
  d4 d,8 | a' fis d | cis4 b8 | b' gis e | d4 cis8 | g' e cis | a' fis d | 
  %69
  b' a cis, |  d8.[ d'16]  cis[ d] |  b8.[ d16]  cis[ d] |  a8.[ d16]  cis[ d] |
  %73
   g,8.[ d'16]  cis[ d] |  fis,8.[ d'16]  cis[ d] |  e,8.[ d'16]  cis[ d] |
  d,4 fis'8 | g e cis |
  %78 page 13
  a' fis d | b' a cis, | d,4 fis'8 | g e cis | a' fis d | b' a cis, |
   d[ a'16 a]  a[ a] |  a8[ fis16 fis]  fis[ fis] | fis8 d16 d d d |
  %87
  d8 a16 a a a | a8 fis16 fis fis fis | fis8 d16 d d d |
  <fis' a, d,>8 fis a | <fis a, d,> fis a |
  %92
  <fis a, d,> <fis a, d,> <fis a, d,> | <fis a, d,>4 r8 \bar "|."
  }
}
