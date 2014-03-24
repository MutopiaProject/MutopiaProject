\version "2.18.0"

IIIMand =  \relative c''' {
  \clef "treble"
  \key e\major
  \time 3/4

  \set Staff.tupletSpannerDuration = #(ly:make-moment 1/4)


  \repeat "volta" 2 {
  \partial 8 b8 |
  %1 page 6
  b, b' \grace a16   gis8[ fis16 e] fis8 dis |
  b b' \grace a16   gis8[ fis16 e] fis8 dis |
  b b' \grace a16   gis8[ fis16 e] fis8 dis |
  gis e e2 |
  %5
  cis8 e \grace d16   cis8[ b16 a] e8 a |
  b e b gis e fis' |
  b, fis' b, a' gis fis |
  \grace dis8 e4 e, r |
  %9
  \tuplet 3/2 {e'8 cis a a a a a b cis |
  b gis e e e e} e4 |
  %11
  \tuplet 3/2 {fis'8 gis a gis fis e dis e fis} |
  \grace fis8 e4 e,2 |
  e'4 r8 e \grace a8 gis8 fis16 e |
  %14 Note: The grace note is unclearly written, looks like a bis, but it is musically obvious that it is a ais.
  \grace ais8 b4 b, r8 e |
  e4 ~ e16 gis fis gis \grace a16 gis8 fis16 e |
  \grace e16 dis8 cis16 b b4 r |
  %17
  \tuplet 3/2 {b8 dis fis fis fis fis fis fis fis} |
  \grace a16 gis8 fis <<fis2 \\ b,>> |
  b'8 fis r fis r dis |
  %20
  gis e r e r cis |
  fis8. gis16 b,4 ais |
  b r8   fis'8[ fis fis] |
  %23
  \grace fis8 e4 dis8 fis fis fis |
  \grace fis8 e4 dis8 fis ais b |
  %25
  \grace a16 gis8 fis16 e dis4 cis |
  b4 r8   fis'[ fis fis] |
  \grace fis8 e4 dis8 fis fis fis |
  \grace fis8 e4 dis8 b' ais b |
  \grace a16 gis8 fis16 e dis4 cis |
  %30
  <<{b4 b2} \\ {fis4 fis2}>>
  }
  \repeat "volta" 2 {
  %31
  <fis' dis fis, b,>4 ~ fis8 dis e cis |
  dis e fis gis fis4 |
  <fis dis fis, b,>4 ~ fis8 dis \grace fis16   e8[ dis16 cis] |
  %34 page 7
  b8 b, fis'' ais b b, |
  <fis' dis fis, b,>4 ~ fis8 dis \grace fis16   e8[ dis16 cis] |
  dis8 e fis gis fis4 |
  b8 fis r   fis[ e dis] |
  dis cis <<cis2 \\ fis,>> |
  %39
  \tuplet 3/2 {gis'8 cis, cis cis cis cis b' a gis |
  a cis, cis cis cis cis cis cis cis |
  gis' cis, cis cis cis cis b' a gis |
  a cis, cis cis cis cis} cis4 |
  %43
  \tuplet 3/2 {fis8 b, b b b b a' gis fis |
  gis e e e e e e e e |
  fis b, b b b b a' gis fis |
  gis e e e e e} e4^. |
  %47
  <<{b4 cis8 b cis b} \\ {gis4 a8 gis a gis}>> |
  <<{a8 b cis b a4} \\ {fis8 gis a gis fis4}>> |
  a4 <<{b8 a b a} \\ {gis fis gis fis}>> |
  %50
  <<{<gis b,>[ a b a]} \\ {s   fis[ gis fis]}>> <gis b,>4 |
  e'8 dis e b a gis |
  \grace a16 gis8 fis <fis b,>2 |
  e'8 dis e b a gis |
  \grace a8 gis8 fis <fis b,>2 |
  %53
  \tuplet 3/2 {b8 gis e e e e a b cis |
  b gis e e e e a b cis |
  b gis e e e e a b cis} |
  \grace dis16 cis8 b b2 |
  %57
  e8 b r b r b |
  e e r cis r a |
  gis8. a16 gis4 fis |
  b r8   e[ e e] |
  %61 Note: The fis actually is more close to a gis, so one possibility is that this bar actually should be identical to 63 (i.e., the second gis should be an a)
  gis16 e a e b' e, gis e fis e a e |
  gis e e e e4:16 e: |
  %63
  gis16 e a e b' e, a e gis e a e |
  gis4 r8 << { b,8[ b b]} \\  { gis[ gis gis]}>> |
  \grace b8 a4 <<{gis8 b b b} \\ {s gis[ gis gis]}>> |
  \grace b8 a4 gis8 e' dis e |
  \grace dis16 cis8 b16 a gis8 e' b, dis' |
  <<e4 b \\ gis>> <<e'2 b \\ gis>>  
  }
}
