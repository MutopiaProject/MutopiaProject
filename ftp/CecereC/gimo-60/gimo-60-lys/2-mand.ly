\version "2.16.0"
\include "2-shared.ly"

IIMand =  \relative c'' {
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
  e8 \times 2/3 {a,16 b cis} b8 b |
  %7 page 15
  \times 4/6 {e16_"Solo" dis e e dis e e b' a gis fis eis
    fis eis fis fis, fis' eis fis a gis fis e dis |
  e dis e e, e' dis e gis fis gis fis e}  fis32[( e dis  cis)]
    \times 2/3 { b16[ dis b]} \times 4/6 {b, fis'' gis a gis fis} |
  \times 2/3 {gis fis e} e8 r e \slashedGrace fis gis fis16 e gis8 ais |
  b8 \times 2/3 {b,16 b b} \times 4/6 {b e fis gis fis e} \grace fis8 e dis ~
    \times 4/6 {dis16 cis dis e dis cis |
  %11 page 16
  dis fis b b gis e fis dis b e cis ais b cis dis e fis gis} fis,8 cis' |
  b_\f b ~ \times 4/6 {b16 fis' e dis cis b} \times 2/3 {cis b cis} cis8 ~
  \IISharedE
  \IISharedF
  b,8 fis'' \times 2/3 {b,16 dis cis} b8 ~ \times 4/6 {b16 fis' e dis cis b} |
  %17 page 17
  \times 2/3 {cis16 e dis} cis8 ~ \times 4/6 {cis16 gis' fis e dis cis}
    \times 2/3 {dis cis b} b8 r fis'8 |
  \times 4/6 {gis16 e b gis' e b gis' e b gis' e b
    fis' dis b fis' dis b fis' dis b fis' dis b |
  e cis ais e' cis ais e' cis ais e' cis ais
    b cis dis dis e fis fis gis a a gis fis |
  gis b b b gis e fis a a a fis dis e b' b b gis e fis a a a fis dis} |
  %21 page 18
  e8.^\trill dis32 cis b8 a \times 4/6 {gis16 a b cis b a} gis8 fis |
  e e' ~
  \IISharedH
  \IISharedI
  \IISharedJ
  \IISharedK
  e4 r^\fermata \bar "|."
}
