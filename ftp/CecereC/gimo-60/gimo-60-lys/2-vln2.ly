\version "2.16.0"
\include "2-shared.ly"

IIVlnII =  \relative c'' {
  \clef "treble"
  \key e\major
  \time 4/4

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % end beams on quarters by default
  \set Timing.beamExceptions = #'((end . (
    ((1 . 8) . (2 2 2 2))
  )))

  \IISharedA
  %4 page 14
  e8 dis ~ \times 4/6 {dis16 dis e fis e dis
    e b' b cis, e e dis fis fis b, dis dis} |
  %5 Note: Bars 5-6 are marked // in manuscript, but in addition to the //, some additional notes exist (starting at the last eighth of bar 5)
  e8. dis32 cis b8 ais b16. cis32 dis16. e32 fis16. gis32 dis8 |
  e8 e4 dis8 e8 a,16. cis32 b8 b, |
  %7 page 15
  r8  e[ e e]  a[ a, a a] |
  gis gis gis a b b dis! dis |
   e[ e e e]  e[ e e fis] |
   b,[ b b b]  b[ b b b] |
  %11 page 16
  b b b ais'
  \IISharedD
  \IISharedE
  %15
  b8 ais ~ \times 4/6 {ais16 ais b cis b ais b dis fis b, e cis} b8 ais! |
  %16 page 17
  \times 4/6 {b16 fis e dis! e fis} b,4 b8 b b' b |
  \IISharedG
  e,8 gis a b |
  %21 page 18
  e,4 r8 fis e a b b, |
  %23 Note: "e' e~" was "e' e" in manuscript
  e' e
  \IISharedH
  \times 4/6 {b16 dis e fis e dis |
  %24
  e b' b cis, e e dis fis fis b, dis dis}
  \IISharedJ
  %25 page 19
  \times 4/6 {gis,16 fis e a gis fis} e8 dis! <e' b e,>4 r^\fermata \bar "|."
}
