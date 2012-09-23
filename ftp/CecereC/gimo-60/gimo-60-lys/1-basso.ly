\version "2.16.0"

IBasso =  \relative c' {
  \clef "bass"
  \key a\major
  \time 4/4

  \set Score.skipBars = ##t

  % end beams on halfs by default

  \partial 8 r8 |
  %1 page 2
  a a a a a a a a |
  e e e e a a a a |
  e e e e a, a cis cis |
  d d d d a a cis cis |
  e e gis gis a a a a |
  %6 page 3
  a a a a gis gis gis gis |
  a a a a gis gis gis gis |
   a[ a]  g[ g]  fis[ fis]  b[ a] |
   gis[ gis] gis r b b b b |
  gis gis gis gis a a e e |
  %11 page 4
  a, a a r b b b b | 
  gis' gis gis gis a a e e, |
  a4 r r2 |
  R1*14 |
  %28 page 7
  e'8 e e e e e e e |
  b b b b e e gis gis |
  %30 page 8
  a a b b e, e gis gis |
  a a a a e e gis gis |
   a[ b]  dis,[ dis]  e[ dis!]  e[ e] |
   e[ dis]  e[ gis] a a b b, |
  e4 r r2 |
  %35 page 9
  R1*17
  %52 page 12
  a,8 a a a a a a a |
  e' e e e a a a a |
  e e e e a, a cis cis |
  d d d d cis cis cis cis |
  d d gis gis gis! gis gis gis |
  %57 page 13
  a d, e e, a a a a |
  gis gis a cis d d gis gis |
  gis gis gis gis a d, e e, |
  a a a a a4 r4^\fermata \bar "|."
}
