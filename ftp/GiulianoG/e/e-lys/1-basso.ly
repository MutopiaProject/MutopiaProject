\version "2.18.0"

IBasso =  \relative c {
  \clef "bass"
  \key e\major
  \time 4/4

  \repeat "volta" 2 {
  \partial 8 r8 |
  %1 page 1
  r   e[ gis b] r   e,[ gis e] |
  fis dis e a, b e e, gis |
  a' a b b, r   e[ gis gis] |
  a a b b, r   e[ gis e] |
  %5
  a a a a r   e[ e e] |
  fis e dis! dis r   e[ e e] |
  r   e[ cis cis] r   b[ e e] |
  r   e[ cis cis]   b[ cis dis! e] |
  %9
  fis fis, r ais b4 r8 b' |
  fis4 r8 ais, r   b[ cis ais!] |
  b dis cis ais b dis e e |
  dis b cis fis, b r e e |
  %13
    dis[ b' cis fis,] b, eis fis ais, |
  b e fis fis, b2 ~ |
  b b8 e e e |
  cis r cis ais b2 ~ |
  %17
  b2 dis8 r e e |
  %18 page 2
  cis8 r cis ais b2 |
  b8 dis fis b b, b' s
  }

  \repeat "volta" 2 {
  \set Score.measurePosition = #(ly:make-moment 3/4)
  b,4 |
  %20
  b2:8 r8   b[ b dis] |
  cis ais b e fis b b, dis |
  e[ e fis fis,] b dis e e |
  dis b cis fis, b[ dis e e] |
  %24
  dis[ b cis fis,] b eis fis fis, |
  b e fis fis, b b'16 c b a g fis |
    e8[ e b' b,] r   e[ e g] |
  fis e d c b4 r8 g' |
  %28
  fis e d c b b' b, r |
    dis[ r16 e] c8 c b4 r^\fermata |
  e8 r e r e r e r |
  dis! r dis r r   e[ gis dis] |
  %32
  e gis fis b, e e gis dis |
    e[ gis b b,] e r e r |
  e gis fis dis e r e r |
  e r b' b,   e[ fis gis dis] |
  %36
    e[ gis fis dis] e r a r |
  gis r fis b, e ais b dis, |
  e a b b, e4 r8 gis |
  a fis b b, e r gis gis |
  a fis b b, e2:8 |
  %41
  e: e4 r8
  }
}
