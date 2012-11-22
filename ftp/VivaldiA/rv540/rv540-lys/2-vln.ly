\version "2.16.0"

IIVln = \relative c' {
  \key f \major
  \time 4/4
  \repeat "volta" 2 {
  \partial 8 r8 |
  \set Score.currentBarNumber = #183
  r8 f f f r8 c c c |
  % 184
  r8 c c c r8 f f f |
  % 185
  r8 e e e r8 d d d |
  % 186
  r8 c c c r8 a a a |
  % 187
  r8 d d d r8 d d d |
  % 188
  r8 d d d r8 a' d d, |
  % 189
  r8 a' a a, d4
  }
  \repeat "volta" 2 {
  r4 |
  r8 d8 d d r8 g g g |
  % 198
  r8 c, c c r8 f f f |
  % 199
  r8 f f f r8 c c c |
  % 200
  r8 f f f r8 c c c |
  % 201
  r8 c c c r8 c c c |
  % 202
  r8 f c' c, f2^\fermata
  }
}
