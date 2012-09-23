\version "2.16.0"
\include "3-shared.ly"

IIIMand =  \relative c''' {
  \clef "treble"
  \key a\major
  \time 3/8

  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  % beams can start anywhere
  % separate triplet beams by default
  \set Timing.beamExceptions = #'((end . (
    ((1 . 24) . (3 3 3))
    ((1 . 8) . (3))
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
  \times 2/3 {a'16_"Solo" gis fis e fis e e fis e} |
  e8. d16 cis8 |
  \times 2/3 {d16 e fis} e,16. gis32 b16. d32 |
  \times 2/3 {cis16 d e} e4 |
  %28 page 22
  \times 2/3 {d16 e fis} e,16. gis32 b16. d32 |
  \times 2/3 { cis16[ b a} a8] r |
  \times 2/3 {cis16 b a} cis8 dis |
  e16 dis e fis gis a |
  b8 a16 gis fis e |
  %33
  dis8 cis16 dis b8 |
  \times 2/3 {fis'16 gis a a gis a a gis a |
  gis fis e dis e fis} e8 |
  \times 2/3 {fis16 gis a a gis a a gis a |
  gis fis e dis e fis} e8 |
  \times 2/3 {fis16 gis a gis fis e dis e fis} |
  %39 page 23
  \times 2/3 {e b' b b b b b b b |
  dis, b' b dis, b' b b b b |
  dis, b' b b, b' b b b b |
  b, b' b a, b' b b b b |
  a, b' b gis, b' b b b b |
  gis, b' b fis, b' b b b b |
  fis, b' b e,, b'' b b b b |
  e,, b'' b dis,, b'' b b b b |
  dis,, b'' b cis,, b'' b b b b} |
  %48 page 24
  \times 2/3 {cis,, b'' b b,, b'' b b b b |
  b,, b'' b a,, b'' b b b b |
  a,, b'' b gis,, b'' b b b b |
  gis b a gis fis e d cis b} |
  fis'4.^\trill |
  %53
  \times 2/3 {e16 dis cis} b8 b |
  b8. a16 gis8 |
  \IIISharedI
  %59 page 25
  \times 2/3 {b'16_"Solo" a gis gis fis e} e8 |
  e16 fis gis a b d,! |
  cis8 b16 cis a8 |
  \times 2/3 {cis'16 b a a gis fis} fis8 |
  fis16 gis a b cis e, |
  dis8 cis16 dis b8 |
  %65
  \times 2/3 {a'16 gis fis} fis fis fis fis |
  gis8. a16 b8 |
  \IIISharedL
  %73 page 26
  \times 2/3 {e,16 dis cis b cis b b cis b} |
  b8. a16 gis8 |
  \times 2/3 {cis16 b a} gis8 fis |
  e4 r8 |
   b'32[( a gis  fis)]  e16[( gis b  d!)] |
  \times 2/3 {cis e e e e e e e e} |
   b32[( a gis  fis)]  e16[( gis b  d)] |
  \times 2/3 { cis[( b16  a)} a8] r |
  %81 page 27
   e'32[( d cis  b)]  a16[( cis e  g)] |
  \times 2/3 {fis a a a a a a a a} |
   e32[( d cis  b)]  a16[( cis e  g)] |
  \times 2/3 { fis16[ e d} d8] r |
   fis32[( e dis  cis)]  b16[( dis fis  a)] |
  \times 2/3 {gis b b b b b b b b} |
   fis32[( e dis  cis)]  b16[( dis fis  a)] |
  \times 2/3 { gis[ fis e} e8] r |
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
   d16.[ b'32] \times 4/6 { b16[ a gis fis e d]} |
   cis16.[ a'32] \times 4/6 { a16[ gis fis e d cis]} |
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
  %91 page 28
  cis8 b r |
  e,16 gis b d cis b |
  a cis e a e cis |
  e, gis b d cis b |
  a cis e a e cis |
  \times 2/3 {fis e d cis b a gis! a b} |
  a8 a' dis, |
  \times 2/3 {e16 b gis} e4 |
  \times 2/3 {a'16 gis fis fis a fis fis a fis} |
  e8. d16 cis8 |
  \times 2/3 {fis16 gis a gis fis e d cis b} |
  %102
  \times 2/3 {a'_\f gis fis} e8 e |
  e8. d16 cis8 |
  %104 page 29
  \IIISharedM
}
