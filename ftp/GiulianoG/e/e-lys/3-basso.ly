\version "2.18.0"

IIIBasso =  \relative c {
  \clef "bass"
  \key e\major
  \time 3/4

  \repeat "volta" 2 {
  \partial 8 r8 |
  %1 page 6
  e4 gis b | e e, b | e gis b | e e, gis | a a a |
  %6
  gis e r | dis dis dis | e r8   e[ gis e] | a4 a a |
  %10
  gis e gis | a b b, | e r8   e[ gis b] | e,4 e e | dis b cis |
  %15
  ais ais ais | b dis fis | dis dis dis | e   dis8[ fis dis b] |
  %19
  b4 b b | e e e | dis8. e16 fis4 fis, | b dis b | fis' b dis |
  %24
  ais b b | e, fis fis, | b dis b | ais b dis | cis b dis |
  %29
  e fis fis, | b r8   b'[ fis dis] |
  }

  \repeat "volta" 2 {
  %31
  b4 dis fis | b, r b' | b, dis fis |
  %34 page 7
  b b, r | b' dis, ais | b b b | b' b b | fis r8   cis'[ a! fis] |
  %39
  eis4 eis eis | fis fis fis | eis eis eis | fis a fis | dis dis dis |
  %44
  e e e | dis! dis dis | e gis b | e, e, r | e'2 fis4 | dis dis r |
  %50
  e2 e4 | gis2 a4 | b b, dis | e e, a | b   b'8[ a gis fis] |
  %55
  e4 e e | e e e | e gis e | r8   e[ gis b gis e] | gis4 gis gis |
  %60 
  a a a | b8. a16 b4 b, | e e, r | e'2. | e4 e, r |
  %65
  e'2. | e4 gis e | dis e e | fis e gis | a b b, | e e,2 |
  }
}
