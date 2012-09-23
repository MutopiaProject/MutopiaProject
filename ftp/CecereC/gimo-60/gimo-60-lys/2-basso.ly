\version "2.16.0"

IIBasso =  \relative c {
  \clef "bass"
  \key e\major
  \time 4/4

  \set Score.skipBars = ##t

  % end beams on quarters by default
  \set Timing.beamExceptions = #'((end . (
    ((1 . 8) . (2 2 2 2))
  )))

  \partial 8 r8 |
  %1 page 14
  e8 e gis gis a a a a |
  gis gis e e dis! dis dis dis |
   e[ e gis gis]  a[ a a a] |
  b b dis,! dis e e dis! dis |
  %5 page 15
   e[ e fis fis,]  b[ b dis! dis] |
   e[ gis a b]  e,[ a b b,] |
  e4 r4 r2 |
  R1*5 |
  %13 page 16
   b'8[ b b b]  ais[ ais ais ais] |
   b[ b b b]  ais[ ais ais ais] |
  b b dis, dis e e dis dis |
  %16 page 17
  fis fis ais ais b dis, fis fis, |
  b4 r r2 |
  R1*4 |
  %22 page 18
  e8 e gis gis a! a a a |
  gis gis gis a b dis, dis dis |
  e gis a b  e,[ a b b,] |
  %25 page 19
  e8 a b b, e4 r^\fermata \bar "|."
}
