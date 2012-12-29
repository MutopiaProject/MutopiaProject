\version "2.16.0"
\include "3-shared.ly"

IIIBasso =  \relative c {
  \clef "bass"
  \key f\major
  \time 3/8

  % Triplets are in groups of 3.
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \set Score.skipBars = ##t
  \set Timing.beamExceptions = #'((end . (
    ((1 . 8) . (3))
    ((1 . 16) . (6))
    ((1 . 24) . (3 3 3))
    ((1 . 32) . (12))
  )))

  %1 page 32
  f8 f f | f f f | f f f | c4 r8 | c4 r8 | c c c |
  f f f | f f f | e e e | d4 a!8 |
  %11 page 33
  c4 e8 | f f fis | g g g | a a a | g g g | f! f f | e e e | f g g, | c4 r8 | 
  %20 page 34
  a'8 a a | g g g | f f f | e e e | f g g, | c c c | c4 r8 |
  %27 Note: Bars 27-28 were originally only one bar "c4 r8"
  c4 r8 | c4 r8 | c c c | f4 r8 |
  %31 page 35
  a,8 bes b | c4 r8 | d' d d | c c c | bes bes bes | a a a | bes c c, |
  f4 r8 | d' d d | c c c |
  %41 page 36
  bes bes bes | a a a |
  %43 Note: This one bar is centered below bars 42-43 of the other parts.
  bes c c, |
  f f f | f f f | bes c c, | f f f | f f f |
  %49 page 37 Note: the original measure, 49 "f f f", has been omitted 
  bes c c, | f f f | f f f | f4 r8 |
  %53 page 38 Note: Bars 53-54 were originally one bar, "f4 r8"
  f4 r8 | f4 r8 | bes, bes bes | f' f f | c c c | f4 r8 | 
  %58 Note: Originally 29 bars of rest.
  R4.*28 |
  %87 Note: Bars 87-100 have been inserted here by me, inspired by bars 107+ 
  a8 a b | c8 c e, | f g g, | c c e | f g g, | c4 r8 |
  a' a b | c8 c e, | f g g, | c c e | f g g, | c c c | c c c | f g g, |
  %101 page 41 Note: This is written at bar 88 in the handwritten score.
  c8 c c |
  %102 page 42
  g' b g | c, c c | g' b g | c, e f | g g g | a a b |
  %108 page 43
  c8 c e, | f g g, | c g' b, | c e g | g g g, | 
  %113 Note: I have omitted two bars, "c c c | c c c"
  c c c |
  %114 page 44
  c4 r8 | c c c | c4 g'8 | c,4 g'8 | c,8 c c | c4 r8 | R4.*10
  %130 page 45
  c8 c c |
  %131 page 46
  c4 r8 | c4 r8 | f8 f f | bes, bes b | c8 c'16 bes a g | f4 r8 |
  %137 page 47
  f4 r8 | bes, bes bes | f' f f | c c c | f4 r8 | f f f | f f f |
  %144 page 48
  f f f | bes,4 r8 | g' g g | g g g | g g g | c,4 r8 |
  %150 Note: Originally 17 bars rest
  R4.*11 |
  %161 page 51 Note: Originally this was bar number 156
  f8 f f | f f f | f f f | c4 r8 | c4 r8 | c8 c c |
  %167 page 52
  f4 r8 | bes, bes b | c c c | d d d | c c c | bes bes bes |
  a a a | bes c c, | f f f | f f a | bes c c, |
  %189 page 53
  f f f | f f a | bes c c, | f f f | f f f |
  %194 Note: I have skipped 5 bars here:
  % bes c c, | a' a a | bes c c, | f f f | f f f |
  f4 r8^\fermata \bar "|."
}
