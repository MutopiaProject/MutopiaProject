\version "2.16.0"

%Note: This work has 3 different sources, Gimo 15, Gimo 16 and Gimo 17.
%I will call these [15], [16] and [17], respectively.

IMandII =  \relative c' {
  \clef "treble"
  \key a\major
  \time 4/4

  \repeat "volta" 2 {
  \partial 16 r16 |
  %1 page 2
  r2 r4 r8 r16 e |
  a8 a a b b4 cis8 r |
  cis,16 a cis a cis a cis a d cis d cis d cis d cis |
  gis'!8 a4 b8 b8.(  gis16) a8 r |
  cis,16 a cis a cis a cis a d a d a d a d a |
  gis'!8 a4(  b8) a32 b cis8. s8 a,8 |
  <<{cis'8-. cis-. cis-. cis-. b-. b-. b-. b-.} {a a a a gis gis gis gis}>>
  <<{dis dis dis dis e4. r8} {b8 b b b b4. r8}>> |
  gis'8. a32 b a8 gis gis4(  a8) r |
  ais8.( b32  cis) b8(  ais) ais4(  b8) r |
  fis'16 e dis cis b a gis fis fis' e dis cis b a gis fis |
  e4 r8 gis a(  gis) a(  gis) |
  a4 dis8.( e32  fis) e8 cis a b |
  e,4 r8 \times 2/3 {gis16 a b} a8 \times 2/3 {gis16 a b} a8 \times 2/3 {gis16 a b} |
  a4 dis8.( e32  fis) e8 cis a b | 
  e, gis'16. e32 fis16 dis b fis' e b gis e' a, gis fis a |
  gis e gis' e fis dis b fis' e b gis e' a, gis fis a |
  gis8 <e gis,>16. q32 q8 q q4 r8 s16
  }

  \repeat "volta" 2 {
  r16 |
  %19
  r2 r4 r8 r16 b' |
  e8 e e fis <<{fis4(  gis8)} \\ b,4>> r8 |
  gis16 e gis e gis e gis e a e a e a e a e |
  dis'8 e4(  fis8) fis dis! e r | 
  gis,16 e gis e gis e gis e a e a e a e a e |
  %24 page 3
  dis8 e4 fis8 e32( fis  gis8.) r4 | 
  <<{b2 b} \\ {gis16 e gis e gis e gis e gis e gis e gis e gis e}>> |
  b'' a gis fis e d cis b a32(  b) cis8. r8 fis |
  fis16(  d) d(  b) b8 a a gis! r4 |
  gis16 b e, b' gis b e, b' a cis e, cis' a cis e, cis' |
  gis b e, b' gis b e, b' a cis e, cis' a cis e, cis' |
  d, a d a d a d a cis a cis a cis a cis a |
   d8[ d]  e[ e] a a, cis'16(  b) cis(  a) |
  %32 Note: d16(  b) was d8(  b) in [15],[16],[17]
  d16(  b) r8 b'16(  gis) r8 cis,16(  a) r8 a'16(  cis,) r8 |
  d16(  b) r8 b'16(  gis) r8 cis,16(  a) r8 a'16(  e) r8 |
  %34 Note: The a8:s were a4:s in [15],[16],[17]
  <<{eis4(  fis8) a8} \\ {a,4. r8}>> dis4 eis8 a8 |
  \times 4/6 {fis16 e d cis d b} b4^\trill a8 a, r4 |
  gis'8 a4(  b8) a(  cis4) a8 |
  gis8 a4(  b8) a cis4(  a8) |
  gis8 a4(  b8) a gis r4 |
  <d' fis, a,>8. e16 fis8 fis fis8.^\trill e32(  d) cis8 b |
  a fis d e d a r4 |
  <d' fis, a,>8. e16 fis8 fis fis8.^\trill e32 d cis8 b |
  a fis d e a fis d e |
   a,[ d]  e[ e] <a e a,> <a e a,> <a e a,> <a e a,> |
  %44
  a16-. cis-. e-. a-. a,-. cis-. e-. a-. <a, e a,>4 r4^\fermata \bar "|."
  }
}
