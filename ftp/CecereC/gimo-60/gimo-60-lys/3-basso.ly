\version "2.16.0"

IIIBasso =  \relative c' {
  \clef "bass"
  \key a\major
  \time 3/8

  \set Score.skipBars = ##t
  \set Timing.beamExceptions = #'((end . (
    ((1 . 8) . (3))
    ((1 . 24) . (3 3 3))
    ((1 . 32) . (12))
  )))

  %1 page 19
  a8 a a | a a a | gis gis gis | a a a |
  %5 page 20
  gis gis gis | a a a | a a a | e e e | dis dis dis |
  e gis gis | a cis cis | e, gis gis | a a a | e e r |
  %15
  d d d | a a a |
  %17 page 21
  d e e, | a a' a | cis, cis cis | cis cis cis | d d d |
  cis cis cis | d e e, | a4 r8 |
  %25
  R4.*28
  %53 page 24
  e'8 e e | e e e | dis dis dis | e gis gis | a b dis, |
  e e e |
  %59 page 25
  gis gis gis | gis gis gis | a a a | 
  %62 Note: Bar 62 has been inserted (was not present in the manuscript)
  ais ais ais | ais ais ais | b b b |
  dis, dis dis | e e e | a b a | g g g | fis e dis | b dis dis |
  %70 page 26
  e e e | a b b, | e4 r8 |
  %73 Note: R4.*28 Was R4.*29 in the manuscript
  R4.*28
  %102 page 28
  a,8 a a | a a a |
  %104 page 29
  gis gis gis | a a a | gis gis gis | a a a | a a a | cis cis cis |
  d d d | dis dis dis | dis dis dis | e e e | gis gis gis | gis gis gis |
  %116 page 30
  a a a | d, d d | cis cis cis | d e e, |
  %119
  a4 r8 \bar "|."
}
