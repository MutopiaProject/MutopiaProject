\version "2.16.0"

IBasso =  \relative c, {
  \clef "bass"
  \time 4/4
  \key d\major

  \repeat "volta" 2 {
  \partial 8 r8 |
  %1 page 1  
  %Note: Bars 2,3,35,36,57,58: The durations of the first five notes seem to be written as 8 16 16 16 8 in the manuscript. I interpreted that as 8 16 16 8 8.
  d8 d' d, d' d, d' cis a | d d16 e fis8 d g16 g g g a8 a, |
  d d16 e fis8 d g16 g g g a8 a, | d8 d16 e fis8 d g16 g g g a8 a, |
  d d d d d d d d | a a a a d16 d d d e8 e, |
  %7
  a4 a'16 g fis e d4 r | a' r fis gis | a r d,16 d d d e8 e, |
  a8 a a a a' a a a | fis fis fis fis fis fis fis fis |
  %12 page 2
   fis[ fis]  fis[ fis]  fis[ fis]  fis[ fis] |  g[ g]  g[ g]  g[ g]  g[ g] |
   gis[ gis]  gis[ gis]  gis[ gis]  gis[ gis] |  a[ a]  a[ a]  a[ a]  a[ a] |
  %16
  a a, a16 a a a b4 cis | d e fis r | cis r d cis | e e g g |
  g a8 a a a a16 a a a | a8 a a a a16 a a a g g g g |
  %22
  g g g g g g g g a8 a a a | a a a a a4 r | cis, r d8 d d d |
  cis cis cis cis d cis e e, | a4 r d r |
  %27 page 3
  %Note: Bar 28: The gis4 is a very clearly written gis in the manuscript, though musically it doesn't make sense.
  c r d8 c e e, | gis4 r r cis | d r a r | cis d e e, |
  a cis d e | fis cis d e | a,2 r4 r8
  }
  
  \repeat "volta" 2 {
  r8 |
  %34
   a[ a']  a,[ a']  a,[ a']  g[ e] | a, a16 b cis8 a d16 d d d e8 e, |
  a a16 b cis8 a d16 d d d e8 e, | a a' bes16 a g f d2^"d." |
  %38
  cis! d | c bes | a8 a' fis! d e a g e |
  %41 page 4
  d4 d g g | d fis e e | d cis d cis | d e fis g | fis e d cis |
  %46
  b gis  a8[ \times 2/3 {a'16 e cis]} a4:8 |
  a8 a a a  d'[ d,] d r | g16 g g g g8 a d,4 r | g a bes g |
  %50
  a a8 a, d4 r8 fis | g4 r8 e fis4 r8 d | e4 r8 cis8 d4 r8 fis |
  g4 r8 e f4 r8 d | e4 r8 cis!  d[ d]  d[ d] |
  %55 page 5
  d16 d d d r4 r2 | d,8 d' d, d' d, d' cis a |
  d d16 e fis8 d g16 g g g a8 a, | d d16 e fis8 d g16 g g g a8 a, | 
  %59
  d8. bes'16 a g fis e d4 d16 d d d | cis8 cis cis cis d4 d16 d d d |
  cis!8 cis cis cis d d d d |  d[ d]  d[ d]  d[ d]  d[ d] |
   d[ d]  d[ d]  d[ d d d] | d d d d g, g g g | g g g g d'4 r |
  %66
  d r d r | d g a a, | d a g' a | b fis g a |
  %70
  d,2 r4^\fermata \bar "|."
  }
}
