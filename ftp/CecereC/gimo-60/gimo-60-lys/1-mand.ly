\version "2.16.0"
\include "1-shared.ly"

IMand =  \relative c'' {
  \clef "treble"
  \key a\major
  \time 4/4

  % end beams on quarters by default

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \partial 8 e8 |
  %1 page 2
  a e cis b16 a <<{ fis'8[ e]} \\ { d[ cis]}>> r a |
  a'32(  gis16.) b32(  a16.) gis32(  fis16.) e32(  d16.) \times 2/3 {cis16 d e} e8 r a |
  a32(  gis16.) b32(  a16.) gis32(  fis16.) e32(  d16.) \times 2/3 {cis16 b a} a8 r e' |
  fis16 d a fis d a' d fis fis8 e r e |
  d16 b gis b e, gis b d d8 cis r a |
  %6 page 3
  \ISharedC
  e'8_ \markup{\italic "Solo"} a32( gis fis e d cis b  a) a'( gis fis e d cis b  a) |
  %14 page 4
  <<{ fis'8[ e]} \\ { d[ cis]}>> r a' \times 4/6 {a16 gis a b a gis b a gis fis e d} |
  \times 2/3 {cis d e} e8 r a \times 4/6 {a16 gis a b a gis b a gis fis e d} |
  %16 page 5
  \times 2/3 {cis b a} a8 r e' fis32( d cis d d, d' cis  d) fis,16( a d  fis) |
  <<{ fis8[ e]} \\ { d[ cis]}>> r e d32( b a b d b a  b) e,16( gis b  d) |
  \times 2/3 {cis b a} a8 r e' a8. gis32 fis e8 dis |
   e32[ gis b gis e gis b gis]  e[ gis b gis e gis b gis]  e[ a cis a e a cis a]  e[ a cis a e a cis a] |
   e[ b' d b e, b' d b]  e,[ b' d b e, b' d b]  e,[( fis gis a b a gis  fis)]  e[( fis e dis e fis gis  a)] |
  %21 page 6
  b8 a16 gis fis8 e \times 2/3 {dis16 e fis} b,8 r b |
  cis32( a b cis d e fis  gis) a( gis fis e d cis b  a) b( gis a b cis d e  fis) gis( fis e d cis b a  gis) |
  a( fis gis a b cis d  e) fis( e d cis b a gis  fis)  gis[ b' b b e,, b'' b b]  fis,[ b' b b gis, b' b b] |
   a,[ a' a a b, a' a a]  cis,[ a' a a dis, a' a a] e8. dis32 cis b8 ais |
  %25 page 7
  b8 b,16. b32 \times 4/6 {b16 fis'' gis a gis fis}  gis32[ a b gis e fis gis e]  fis[ gis a fis dis e fis dis] |
  e8. dis32 cis b8 a \times 4/6 {gis16 a b cis b a} gis8 fis |
  e' b gis fis16 e cis'8 b r
  \ISharedE
  \ISharedF
  e8 \times 2/3 {a,16 b cis} \times 4/6 {b a gis a b b,} |
  %33 page 8
  e'8_ \markup{\italic "Solo"} b gis fis16 e cis'8 b r e |
  \times 4/6 {e16 dis e fis e dis fis e dis cis b a} \times 2/3 {gis! a b} b8 r e |
  %35 page 9
  \times 4/6 {e16 dis e fis e dis fis e dis cis b a gis b e e e e gis, b e e e e} |
  <<e2_ \markup{\italic Siegue} \\ a, \\ cis>> <<fis \\ \\ d \\ \\ fis,>> |
  %37 4 bars of shifted stemUp chords
  <<{fis' gis | a fis | g c, | cis d} \\ \\{dis b | cis a | b e, | e fis}
  \\ \\ {fis e | e d | d gis, | a a}>>
  <<e'' \\ gis, \\ b >> a16 a' gis fis e d cis b |
  %42 page 10
  a32( b cis d e fis gis  a) a,( b cis d e fis g  e) fis16 e32 fis g!16 e fis e32 fis g16 e |
  fis32( d cis b a gis fis  e) d4 b'16 b' ais gis fis e dis cis |
  b32 cis dis e fis gis ais b b, cis dis e fis gis a fis
    gis16^\trill fis32 gis a16 fis gis16^\trill fis32 gis a16 fis |
  gis32 e dis cis b a gis fis e4 e32( fis gis a b cis dis!  e) e,( fis gis a b cis d  b) |
   cis[ a b a d a b a]  e'[ a, b a fis' a, b a]  e'[ a, b a gis' a, b a]  gis'[ a, b a a' a, b a] |
  %47 page 11
   a'[( gis fis e fis e d  cis)]  d[( cis b a b a gis  fis)] e8 e32( d e  fis)
    gis( fis gis a b a b  cis) |
  d8 b32( a b  cis) d( cis d e fis e fis  gis) a8. gis32 fis e8 dis |
  e4 r^\fermata e,32 gis b e e, gis b e a, cis e a a, cis e a |
  e, gis b e e, gis b e a, cis e a a, cis e a a, a' gis fis e fis e d cis d cis b a b a gis |
  %51 page 12
  a( b cis d e fis gis  a) a,( b cis d e fis gis  a) e,4 b'^\trill |
  a'8 e cis b16 a <<{ fis'8[ e]} \\ { d[ cis]}>> r
  \ISharedK
}
