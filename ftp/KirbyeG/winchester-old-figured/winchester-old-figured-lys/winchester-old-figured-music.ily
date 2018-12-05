global = {
  \key f \major
  \time 4/4
}

upperStaff = \relative c' {
  \partial 4 f4 |
  a4. a8 g4 f |
  bes bes a \breathe g |
  a c c b |
  c2. \breathe a4 | \octaveCheck a'
  d4. c8 bes4 a |
  g f e \breathe a |
  g f f e |
  f2. \bar "|." \barNumberCheck #8
}

figs = \figuremode {
  <_>4 |
  <_> <_> <_> <_> |
  <_> <_> <_> <_> |
  <_> <6> <4> <_!> |
  <_>2. <_>4 |
  <_> <_> <6> <_> |
  <_> <_> <_> <_> |
  <_> <_> <_> <_> |
  <_>2. \barNumberCheck #8
}

lowerStaff = \relative c {
  \partial 4 f4 |
  f4. f8 c4 d |
  bes bes f' \breathe c |
  f e g g, |
  c2. \breathe f4 | \octaveCheck f
  bes,4. f'8 d4 f |
  c d a \breathe f' |
  c d bes c |
  f,2. \bar "|." \barNumberCheck #8
}