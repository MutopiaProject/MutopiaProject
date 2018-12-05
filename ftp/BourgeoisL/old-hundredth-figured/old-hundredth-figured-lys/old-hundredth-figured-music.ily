global = {
  \key g \major
  \time 4/4
}

upperStaff = \relative c'' {
  \partial 2 g2 |
  g4 fis e d |
  g2 a |
  b\fermata b | \octaveCheck b'
  b4 b a g |
  c2 b |
  a\fermata g | \octaveCheck g'
  a4 b a g |
  e2 fis |
  g\fermata d' | \octaveCheck d''
  b4 g a c |
  b2 a |
  g\fermata \bar "|." \barNumberCheck #12
}

figs = \figuremode {
  \partial 2 <_>2 |
  <_>4 <_> <_> <_> |
  <_>2 <4>4 <3> |
  <_>2 <_> |
  <_>4 <_> <_> <_> |
  <_>2 <_> |
  <_> <_> |
  <_>4 <_> <_> <6> |
  <_>2 <6\+ 3> |
  <_> <6> |
  <_>4 <_> <_> <_> |
  \bassFigureExtendersOn
  <6> <6> <4> <3> |
  \bassFigureExtendersOff
  <_>2 \barNumberCheck #12
}

lowerStaff = \relative c' {
  \partial 2 g2 |
  g4 d e b |
  e2 d |
  g,\fermata g' | \octaveCheck g
  g4 g d e |
  c2 g |
  d'2\fermata e | \octaveCheck e
  d4 g d b |
  c2 a |
  g\fermata fis | \octaveCheck fis,
  g4 e' d a |
  b( c) d2 |
  g,\fermata \bar "|." \barNumberCheck #12
}