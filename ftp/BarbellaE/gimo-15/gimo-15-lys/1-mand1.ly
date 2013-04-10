\version "2.16.0"

%Note: This work has 3 different sources, Gimo 15, Gimo 16 and Gimo 17.
%I will call these [15], [16] and [17], respectively.

IMandI =  \relative c' {
  \clef "treble"
  \key a\major
  \time 4/4

  \repeat "volta" 2 {
  \partial 16 e16 |
  %1 page 2 Note: No slur in [17]
  a8 a a b b4(  cis8) r16 e, |
  <<{cis'8_. cis_. cis_. d~ d8.(  dis16) e8 r} \\ {e,2 e4 s8 r}>> |
  <<{a'16(  e) e4 a8 gis16(  fis) fis4 a8} \\ {a,2 a}>> |
  %4 Note: cis4(  d8) was cis4 d8 in [17]
  <<{b8 cis4(  d8) d8.(  bis16) cis8 r} \\ {fis,2 fis4 s8 r}>> |
  <<{ais'16(  e) e4 ais8 ais16(  fis) fis4 ais8} \\ {a,2 a}>> |
  <<{b8(  cis4) d8 cis32(  b) a8. r8 a'} \\ e,2>> |
  %7
  a'16 gis fis e d cis b a <<e'4. b \\ gis!>> gis'!16(  b) |
  %8 Note: the a4 looks a bit like an a4_- in [15]
  a gis fis e d cis b a a4(  gis!8) r | 
  %9 Note: {e,2 e4} was {e,2 e4 s8 r} in [15]
  <<{b8.( cis32  d) cis8 b b8. bis16 cis8 r} \\ {e,2 e4}>> |
  %10 Note: cisis looks like cis!. dis!8 was dis8 in [15].
  <<{cis'8. dis32 e dis8(  cis) cis8. cisis16 dis!8 r} \\ {fis,2 fis4. r8}>> |
  %11
  a'16 gis fis e dis cis b a a' gis fis e dis! cis b a |
  %12 Note: d!8( cis16) was d!8 cis16 in [16]
  gis8 b'16 gis e4 r8 d!8(  cis16)(  d) cis(  d) |
  <<e4 \\ cis>> fis8. gis32 a \times 4/6 {gis16 fis e a gis fis} fis4 |
  e8 b'16 gis <<{e4 e2} \\ {r8 d!(  cis) d( cis  d)}>> |
  %15 Note:  fis8.[^trill gis32( a)] was  fis8.[ gis32 a] in 16
  <e cis>4 fis8.^\trill gis32(  a) \times 4/6 {gis16 fis e a gis fis} fis4^\trill |
  e8 b'16(  gis) a fis b, a' gis e b gis' fis e dis fis |
  e b b' gis a fis b, a' gis e b gis' fis e dis fis |
  e8 <b e,>16. q32 q8 q <e b e,>4 <<r8 \\ r>> r16
  }

  \repeat "volta" 2 {
  b16 |
  %19
  e8^. e^. e^. fis^. fis4(  gis8) r16 cis, |
  <<{gis'8-. gis-. gis-. a-. a8.( ais16  b8) r} \\ {b,2 b4. r8}>> |
  e'16 b b4 e8 e16(  cis) cis4(  e8) |
  %22 Note:  a8.[ fis16 g] is  a8[ fis g] in [16]. b4. is b4 in [15],[16],[17]
  <<{fis,8-. gis4(  a8)  a8.[ fis!16 gis8]} \\ {b,2 b4. r8}>> |
  %23 Note: "e2, e" is left out in [16]
  <<{e16 b b4 e8( e16  cis) cis4 e8} \\ {e,2 e}>> |
  %24 page 3
  <<{fis8 gis!4(  a8)} \\ d,2>> gis32 fis e8. r8 b'' |
  %25 Note: the second r is r8. in [15],[17], which is probably just a mistake.
  b gis r d!~ d b r8 e' |
  d16 cis b a gis fis e d cis32(  b) a8. r8 a' |
  a16(  fis) fis(  d) d8 cis cis b r e, |
  d'16(  b) r8 b'16(  gis) r8 cis,16(  a) r8 a'16(  e) r8 |
  %29 Note: "b'16( )gis r8" was left out in [15],[16],[17]. All slurs were left out in [16]
  d16(  b) r8 b'16(  gis) r8 cis,16(  a) r8 a'16(  e) r8 |
  %30 Note: {a,4. r8} was {a,4. <<r8 \\ r>>} in [15],[17]
  <<{eis4(  fis8)\noBeam  a} \\ {a,4. r8}>> dis4(  eis8)\noBeam  a |
  \times 4/6 {fis16 e d cis d b} b4 a8 a, r4 |
  gis'16 b d, b' gis b d, b' a cis d, cis' a cis d, cis' |
  gis16 b d, b' gis b d, b' a cis d, cis' a cis d, cis' |
  d, a d a d a d a cis a cis a cis a cis a |
  d8 d e e a a, r4 |
  <<{b'8(  cis4) d8 cis(  e4) cis8} \\ {e,2 e}>> |
  <<{b'8(  cis4) d8 cis(  e4) cis8} \\ {e,2 e}>> |
  <<{b'8 c4 d8} \\ {e,4}>> cis'8 b r4 |
  <fis' a, d,>8. gis16 a8 a a8.( gis32  fis) e8 d |
  \times 4/6 {cis16 b a d cis b} b4^\trill a8 a, r4 |
  %41 Note: the trill is not present in [16]
  <fis'' a, d,>8. gis16 a8 a a8.^\trill gis32 fis e8 d |
  \times 4/6 {cis16 b a d cis b} b4^\trill \times 4/6 {cis16 b a d cis b} b4^\trill |
  \times 4/6 {cis16 d e fis gis a} b,4^\trill a16 cis e a a, cis e a |
  a,8 <e a,> <e a,> <e a,> <a e a,>4 r4^\fermata \bar "|."
  }
}
