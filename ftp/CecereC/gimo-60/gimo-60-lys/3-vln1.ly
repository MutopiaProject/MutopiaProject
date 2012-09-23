\version "2.16.0"
\include "3-shared.ly"

IIIVlnI =  \relative c''' {
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
  \times 2/3 {a16 gis fis} e8 e |
  e8. d16 cis8 |
  \times 2/3 {d16 e fis} e,16. gis32 b16. d32 |
  \times 2/3 { cis16[ d e} e8] r |
  %5 page 20
  \times 2/3 {d16 e fis} e,16. gis32 b16. d32 |
  \times 2/3 {cis16 b a} a4 |
  \IIISharedA
  \IIISharedB
  \IIISharedC
  \IIISharedD
  \IIISharedE
  \IIISharedF
  \IIISharedG
  %24 page 21
  a4 e8 |
  e8 e e |
  gis gis gis |
  a cis cis |
  %28 page 22
  b gis gis |
  a cis b |
  a a a |
  gis gis gis |
  gis4 a8 |
  b4 r8 |
  a cis a |
  b gis gis |
  a cis a |
  b gis gis |
  a b b, |
  %39 page 23
  e e e |
  dis dis dis |
  dis dis dis |
  dis dis dis |
  dis? e e |
  e dis dis |
  dis e e |
  e b dis |
  b a b |
  %48 page 24
  a b dis |
  d cis d |
  d e dis |
  \IIISharedH
  %53
  \times 2/3 {e'16 dis cis} b8 b |
  b8. a16 gis8 |
  \IIISharedI
  %59 page 25
  gis8 gis gis |
  gis gis gis |
  \IIISharedJ
  %65
  \times 2/3 {a'16 gis fis} fis fis fis fis |
  \IIISharedK
  \IIISharedL
  %73 page 26
  e8 e, e |
  e8. fis16 gis8 |
  a b b, |
  e gis b |
  e, b' b |
  a cis cis | 
  e, b' b |
  a e cis |
  %81 page 27
  a cis cis |
  d fis fis |
  a, cis cis |
  d fis e |
  dis fis fis |
  e gis gis |
  dis fis fis |
  e b' a |
  gis b r |
  a cis r |
  %91 page 28
  a4 dis,8 |
  e gis b | 
  a cis a |
  e gis b |
  a cis a |
  d, e e |
  a,4 r8 |
  gis' gis gis |
  a d, d |
  cis cis cis |
  d e e |
  %102
  \times 2/3 {a'16 gis fis} e8 e |
  e8. d16 cis8 |
  %104 page 29
  \IIISharedM
}
