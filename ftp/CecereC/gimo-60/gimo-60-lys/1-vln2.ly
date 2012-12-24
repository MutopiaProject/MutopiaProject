\version "2.16.0"
\include "1-shared.ly"

IVlnII =  \relative c'' {
  \clef "treble"
  \key a\major
  \time 4/4

  % end beams on quarters by default

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \partial 8 e8 |
  %1 page 2
  a e cis b16 a d8 cis r a |
  \ISharedA
  d8 cis r e |
  %5
  \ISharedB b8 a r a |
  %6 page 3
  \ISharedC
  r8 r8 a,[ a a] |
  %14 page 4
  r8  a[ a a] r  e'[ e e] | r  a,[ a a] r  e'[ e e] |
  %16 page 5
  \ISharedD  d[ d d d] |
  \ISharedD r  e[ e e] |
  r  a,[ a a] r  a'[ b b,] |
  e e e e e e e e |
  e e e e e e e e |
  %21 page 6
  gis4 a8 ais b dis, e e |
  a, a a a e' e e e |
  dis dis dis dis e4 r8 e |
  dis4 r8 b  e[ e fis fis] |
  %25 page 7
  b, b b b e gis a b |
  b, b b b e a b b, |
  <e' b e,> b gis fis16 e a8 gis r
  \ISharedE
  %30 page 8
  \times 4/6 {a16 cis e e cis a a cis e e cis a} a8 gis e'4 ~ |
  e8 dis16. e32 \times 4/6 {fis16 e dis cis b a} e'8 \times 2/3 {dis!16 e fis} \times 4/6 {e b' gis e e e} |
  fis8 \times 2/3 {dis16 e fis} \times 4/6 {e b' gis e e e} e8 \times 2/3 {a,16 b cis} b8 b, |
  %33 page 8
  e4 e8 e r  e[ e e] |
  e e e dis r  e[ e e] |
  %35 page 9
  e e e dis r  e[ e e] |
  r  a,[ a a] r  d[ d d] |
  r  b[ b b] r  e[ e e] |
  r  cis[ cis cis] r  d[ d d] |
  %39 Note:  g?[ g f f] looks like  gis[ gis g! fis]
   g?[ g f f]  e[ c c c] |
   a[ a a a]  a[ a a a] |
  r  e'[ e e] <a e a,>4 r |
  %42 page 10
  a,8 a cis cis d cis d cis |
  d r \ISharedG r8 ais |
  b b b b cis b cis b |
  cis r \ISharedH e8 e |
  a,8 a a a \ISharedI
  r8 gis' gis! gis gis gis |
  %48 page 11
  gis gis gis gis \ISharedJ
  r4^\fermata gis!8 r a r |
  %50
  gis r a r <e a,>4 r8 gis,! |
  %51 page 12
  a4 cis8 d e4 e |
  a'8 e cis b16 a d8 cis r
  \ISharedK
}
