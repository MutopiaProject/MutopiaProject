global = {
  \key d \major
  \time 4/4
}

upperStaff = \relative c' {
  \partial 4 d4 |
  fis g a a |
  b b a \breathe a |
  d cis b b |
  a2. \breathe d,4 | \octaveCheck d'
  fis g a a |
  b b a \breathe d, |
  g fis e e |
  d2. \bar "|." \barNumberCheck #8
}

figs = \figuremode {
  <_>4 |
  <_> <6> <_> <_> |
  <_> <_> <_> <_> |
  <_> <_> <4> <_+> |
  <_>2. <_>4 |
  <_> <6> <_> <_> |
  <_> <_> <_> <_> |
  <_> <_> <4> <3> |
  <_>2. \barNumberCheck #8
}

lowerStaff = \relative c {
  \partial 4 d4 |
  d b a d |
  g g, d' \breathe d |
  d a e' e |
  a,2. \breathe d4 | \octaveCheck d
  d b a d |
  g g, d' \breathe b |
  g d' a a |
  d2. \bar "|." \barNumberCheck #8
}