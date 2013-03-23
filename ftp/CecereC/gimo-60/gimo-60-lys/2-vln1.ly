\version "2.16.0"
\include "2-shared.ly"

IIVlnI =  \relative c'' {
  \clef "treble"
  \key e\major
  \time 4/4

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % end beams on quarters by default
  \set Timing.beamExceptions = #'((end . (
    ((1 . 8) . (2 2 2 2))
  )))

  \IISharedA
  \IISharedB
  \IISharedC
  e8 a,16. cis32 b8 b, |
  %7 page 15
  r8  e[ gis b]  a[ a, a a] |
  gis gis gis a b b fis' fis |
   e[ gis b gis]  e[ e e fis] |
  r  dis![ dis dis]  dis[ dis dis dis] |
  %11 page 16
  dis dis dis ais'
  \IISharedD
  \IISharedE
  \IISharedF
  b,4 b8 b b' b |
  %17 page 17
  \IISharedG
  e,8 gis a b |
  %22 page 18
  e, fis gis fis e a b b, |
  %23 Note: "e' e~" was "e' e" in manuscript
  e' e ~
  \IISharedH
  \IISharedI
  \IISharedJ
  \IISharedK
  <e b e,>4 r^\fermata \bar "|."
}
