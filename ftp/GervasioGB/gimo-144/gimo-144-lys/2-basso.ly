\version "2.16.0"

IIBasso =  \relative c' {
  \clef "bass"
  \time 4/4
  \key g\minor
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % end beams on quarters by default
  \set Timing.beamExceptions =
    #'( (end . (
      ((1 . 8) . (2 2 2 2))
    )))

  \partial 8 r8 |
  %1 page 6
  g8 fis g fis g4 r8 d | g bes, c d \times 4/6 {g16 d c bes c d} g,4 |
  r8 bes c d \times 4/6 {g16 d c bes c d g, g' f es d c} |
  bes8 bes bes bes bes bes' f f, | bes bes bes bes bes bes' f f, |
  %6
  bes bes bes bes bes bes bes bes | bes d es e f f16 g a8 f |
  bes a bes a bes4 d, | es8 es es es d d d d | c c c c bes4 c |
  %11 page 7
  d es f d |  es8[ es es es]  es[ es es es] | f f f f f f f f |
  f4 bes,8 es f a, bes es | f f, \times 4/6 {bes16 f' es d es f} bes,4 r |
  %16
  r8 bes \times 2/3 { bes16[ bes bes} bes8] a4 r |
  bes8 bes bes bes bes bes bes bes | es bes c d es16 es es es f8 f, |
  bes8 bes bes bes bes4 r8 bes | b b b b c4 es | f16 f f f g8 g, c4 c8 bes |
  %22 page 8
  a!2 bes4 d | es8 es f f, bes4 d | d8 e f f, r  a'[ bes bes,] |
  r  a'[ bes d,]  es[ es es es] | d d d d c c c c | bes bes bes bes bes4 r |
  %28
  bes r es r | f f g es | f d es16 es es es f8 f, |
  \times 4/6 {bes'16 f es d es f} bes,4 r2 | g'8 fis g fis g4 r8 es |
  %33
  g bes, c d g,4 g | bes r r8  bes[ c d] |
  %35
  \times 4/6 {g16 d c bes c d g d c bes c d} g,4 r^\fermata \bar "|."
}


