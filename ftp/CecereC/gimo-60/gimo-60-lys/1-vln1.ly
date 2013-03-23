\version "2.16.0"
\include "1-shared.ly"

IVlnI =  \relative c'' {
  \clef "treble"
  \key a\major
  \time 4/4

  % end beams on quarters by default

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \partial 8 e8 |
  %1 page 2
  a e cis b16 a <<{ fis'8[ e]} \\ { d[ cis]}>> r a' |
  \ISharedA
  fis8 e r e |
  %5
  \ISharedB d8  cis r a |
  %6 page 3
  \ISharedC
  r8 r8  a,[^ \markup{\italic "dol."} cis a] |
  %14 page 4
  r8  a[ cis a] r  e'[ gis e] | r  a,[ cis a] r  e'[ gis e] |
  %16 page 5
  \ISharedD r  d[ fis d] |
  \ISharedD r  e[ gis e] |
  r  a,[ cis a] r  a'[ b b,] |
  b' b b b b b b b |
  b b b b b b b b |
  %21 page 6
  b b a ais b dis, e e |
  e4 r b' r |
  r8  fis[ fis fis] gis4 r8 e |
  fis4 r8 b,  e[ e fis fis] |
  %25 page 7
  e e dis dis e gis a b |
  e, e dis dis  e[ a b b,] |
  <e' b e,> b gis fis16 e cis'8 b r
  \ISharedE
  \ISharedF
  e8 a,16 cis b8 b, |
  %33 page 8
  e4 e8 e r  e[ gis e] |
  b' b b dis, r  e[ gis e] |
  %35 page 9
  b' b b dis, r  e[ gis e] |
  r  a,[ cis a] r  d[ fis d] |
  r  b[ dis b] r  e[ gis e] |
  r  cis[ cis cis] r  d[ fis d] |
  %39
   g?[ g f f]  e[ e e e] |
   e[ e e e]  d[ d d d] |
  r  e[ gis e] <a e a,>4 r |
  %42 page 10
  e8 e e e d cis d cis |
  d r \ISharedG r8 ais |
  dis dis dis dis e dis e dis | 
  e r \ISharedH gis4 |
  a8 a, a a \ISharedI
  r8 b' gis! gis gis gis |
  %48 page 11
  b b b b \ISharedJ
  r4^\fermata b8 r cis r |
  %50
  b r cis r a4 r8 gis,! |
  %51 page 12
  a4 cis8 d e4 e |
  a'8_\f e cis b16 a fis'8 e r
  \ISharedK
}


