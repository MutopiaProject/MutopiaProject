\version "2.16.0"

IIBasso =  \relative c {
  \clef "bass"
  \time 4/4
  \key g\major

  % end beams on quarters by default
  \set Timing.beamExceptions =
    #'( (end . (
      ((1 . 8) . (2 2 2 2))
    )))

  \partial 8 r8 |
  g g g g g g b b | c c c c d d g, b | c c c c d d g, g |
  %4
  g g g g b b b b | c c c b a a a a | cis cis cis cis d d d d |
  %7
  d fis! g g e cis d fis! | g c,! d d g c, d d, |
  g'16 d g d fis! d fis d g d g d fis! d fis d |
  %10
  g16 d g d a' d, a' d, g d g d fis! d fis d |
  g8 g g g b, b c c | c d g, g g g b b | c c c cis  d[ d c c] |
  %14
  b c d c  b[ b c c] |  b[ c d d] fis16 d g d fis! d e d |
   fis8[ b, c d] g16 d g d fis! d fis d |  g8[ b, c d]  g[ b, c d] |
  %18
   g16[ g,]  b[ b']  c[ c,]  d[ d']  g,8[ b, c d] |  g,[ g g g] g4 g |  b8[ g' fis d] g4 g, |
  %21
  c4 d g, r4^\fermata \bar "|."
}
