\version "2.16.0"
\include "3-shared.ly"

IIIVlnII =  \relative c''' {
  \clef "treble"
  \key a\major
  \time 3/8

  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  % beams can start anywhere
  % separate triplet beams by default
  \set Timing.beamExceptions = #'((end . (
    ((1 . 8) . (3))
    ((1 . 24) . (3 3 3))
    ((1 . 32) . (12))
  )))

  %1 page 19
  \times 2/3 {a16 e d} cis8 cis |
  cis8. b16 a8 |
  \times 2/3 {b16 cis d} e,16. gis32 b16. d32 |
  \times 2/3 { a16[ b cis} e8] r |
  %5 page 20
  \times 2/3 {b16 cis d} e,16. gis32 b16. d32 |
  \times 2/3 {cis16 b a} a4 |
  %7 Note: "a16. cis32 e16. cis32" was "a16 cis e cis" in manuscript
  \times 2/3 {cis16 b a} a16. cis32 e16. cis32 |
  cis8 b e |
  \IIISharedB
  %15
  d8 d4 |
  \times 2/3 {cis16 b a gis a b} a8 |
  \IIISharedD
  %18 page 21
  a'8[ r16 a, cis e] |
  \IIISharedF
  %21
  \grace e8 d4. |
  e8 d16 cis b a |
  \times 2/3 {d16 cis b cis b a gis a b} | 
  %24
  a4 a,8 |
  a a a |
  e' e e |
  a cis a |
  %28 page 22
  gis e e |
  a cis b |
  a a a |
  gis gis gis |
  gis4 a8 |
  b4 r8 |
  a a a |
  gis e e |
  a a a |
  gis e e |
  a b b, |
  %39 page 23
  e e e |
  b b b |
  b b b |
  b b b |
  a e' e |
  e dis b |
  b e e |
  e b b |
  b a b |
  %48 page 24
  a b b |
  b a b |
  cis e dis |
  \IIISharedH
  %53
  \times 2/3 {e'16 b gis} gis8 gis |
  gis8. fis16 e8 |
  \IIISharedI
  %59 page 25
  e8 e e |
  e e e |
  \IIISharedJ
  %65
  \times 2/3 {fis'16 e dis} dis dis fis dis |
  \IIISharedK
  \IIISharedL
  %73 page 26
  e8 e, e |
  e8. fis16 gis8 |
  a b b, |
  e gis fis |
  e e e |
  a a a |
  e e e |
  a e cis |
  %81 page 27
  a a a |
  d d d |
  a a a |
  d fis e |
  dis dis dis |
  e e e |
  dis dis dis |
  e e fis |
  gis4 r8 |
  a4 r8 |
  %91 page 28
  a e dis |
  e gis gis | 
  a a a |
  gis gis gis |
  a a a |
  d, e e |
  a,4 r8 |
  e' e e |
  a, d d |
  cis cis cis |
  d e e |
  %102
  \times 2/3 {a'16 e d} cis8 cis |
  cis8. b16 a8 |
  %104 page 29
  \times 2/3 {b16 cis d} e,16. gis32 b16. d32 |
  \times 2/3 { a16[ b cis} cis8] r |
  \times 2/3 {b16 cis d} e,16. gis32 b16. d32 |
  \times 2/3 { a16[ b cis} cis8] r |
  a16 b cis d cis d |
  \grace {cis16[ d]} e4. |
  fis16 a cis, e d8 |
  b16 cis dis e dis e |
  \grace {d!16[ e]} fis4. |
  gis16 b dis, fis e8 |
  e,16 fis gis a gis a |
  b4. |
  %116 page 30
  cis8 b a |
  \times 2/3 {d16 cis b} a8 gis |
  a' a, cis |
  \times 2/3 {d16 cis b} a8 gis! |
  %120
  a16 e cis e a,8 \bar "|."
}
