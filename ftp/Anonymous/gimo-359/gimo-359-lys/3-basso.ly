\version "2.16.0"

IIIBasso =  \relative c {
  \clef "bass"
  \key c\major
  \time 3/8

  %1 page 10
  r8 e c | d f e | c e c | b a g | c e c |
  %6 page 11
  b a g | c e g | c, c c | b b b | a fis' g | g4 r8 | c,4 r8 | g'4 r8 |
  c,4 r8 | a4 r8 | d4 r8 | a4 r8 | d4 r8 | fis8 fis fis |
  %20 page 12
  g, a b | c a b | c d d, | g g'16 f e d | c8 e c | b a g | c e c | b a g |
  c e c | b a g | c4 e8 | f4 fis8 | g4 r8 | g, a b | c d e |
  %35 page 13
  f g g, | c4 r8^\fermata \bar "|."
}
