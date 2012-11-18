\version "2.16.0"

IIBasso =  \relative c {
  \clef "bass"
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \key g\major
  \time 2/2
%page 4
  \partial 4 r4 |
  g'4 g g g |
  g g g g |
  g g g g |
  %4
  d d d d |
  g g g g |
  a a a, a |
  d r4 r4 d |
  %8
  g, g' a a, |
  d r4 r4 d |
  g, g' a a, |
  d d d d |
  %12
  d a'8 b a g fis e |
  d4 d d d |
  d d d d |
  d d d d |
  %16
  a a a a |
  d d d d |
  a a a a |
  d d d d |
  %20
  gis, gis a a |
  d d d d |
  d d g g |
  g g b c |
  %24
  d d, g, r4 |
  g' r g c, |
  d d, g2 
  \bar "|."
}
