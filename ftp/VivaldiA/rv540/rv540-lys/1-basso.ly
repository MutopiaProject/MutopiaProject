\version "2.16.0"

IBasso = \relative c {
  \clef "bass"
  \key f \major
  \time 2/4 
  \set Timing.beamExceptions = #'(
    (end . (
      ((1 . 8) . (4))
      ((1 . 16) . (4 4))
    )))

  \set Score.skipBars = ##t

  \partial 8 r8 |

  r8 f e d |
  % 2
  r8 a' f d |
  % 3
  r8 cis b a |
  % 4
  r8 f' e d |
  % 5
  r8 cis b a |
  % 6
  r8 g bes g |
  % 7
  a a' g f |
  % 8
  r8 a g f |
  % 9
  r8 e d c |
  % 10
  r8 e d c |
  % 11
  r8 f a f |
  % 12
  f8. f16 f8. f16 |
  % 13
  f8. f16 f8. f16 |
  % 14
  bes d c bes a g f e |
  % 15
  f8 a, bes c |
  % 16
  f, a' g f |
  % 17
  r8 d'16 c d8 d, |
  % 18
  r8 d' g, d |
  % 19
  g, bes' a g |
  % 20
  r8 c16 bes c8 c, |
  % 21
  r8 c' f, c |
  % 22
  f, a'16 g f8 bes, |
  % 23
  a4 r8 a8 |
  % 24
  bes4 r8 g'8 |
  % 25
  f4 r8 gis,8 |
  % 26
  a cis' d a |
  % 27
  f e d a |
  % 28
  d cis' d a |
  % 29
  f e d a |
  % 30
  d4 r |
  % 31
  R2*22
  % 53
  f,8 f' d bes |
  % 54
  r8 f' a, bes |
  % 55
  r8 e d c |
  % 56
  r8 a' g f |
  % 57
  r8 d'16 c d8 d, |
  % 58
  r8 d' g, d |
  % 59
  r8 g16 fis g8 g, |
  % 60
  r8 c'16 bes c8 c, |
  % 61
  r8 c' f, c |
  % 62
  r8 a' g f |
  % 63
  c4 r8 c8 |
  % 64
  bes4 r8 bes8 |
  % 65
  a e'' f c |
  % 66
  a g f c |
  % 67
  f e' f c |
  % 68
  a g f c |
  % 69
  f,4 r |
  % 70
  R2*24 |
  % 94
  a8 cis e a |
  % 95
  d, f e d |
  % 96
  r8 a' f d |
  % 97
  r8 cis b a |
  % 98
  r8 f' e d |
  % 99
  a4 r8 a8 |
  % 100
  bes4 r8 g'8 |
  % 101
  f4 r8 gis,8 |
  % 102
  a cis' d a |
  % 103
  f e d a |
  % 104
  d cis' d a |
  % 105
  f e d a |
  % 106
  d4 r |
  % 107
  R2*46 |
  % 153
  r8 f8 e d |
  % 154
  r8 a' f d |
  % 155
  r8 cis b a |
  % 156
  r8 f' e d |
  % 157
  r8 cis b a |
  % 158
  r8 g bes g |
  % 159
  a a' g f |
  % 160
  r8 a g f |
  % 161
  r8 e d c |
  % 162
  r8 e d c |
  % 163
  r8 f a f |
  % 164
  f8. f16 f8. f16 |
  % 165
  f8. f16 f8. f16 |
  % 166
  bes d c bes a g f e |
  % 167
  f8 a, bes c |
  % 168
  f, a' g f |
  % 169
  r8 d'16 c d8 d, |
  % 170
  r8 d' g, d |
  % 171
  g, bes' a g |
  % 172
  r8 c16 bes c8 c, |
  % 173
  r8 c' f, c |
  % 174
  f, a'16 g f8 bes, |
  % 175
  a4 r8 a8 |
  % 176
  bes4 r8 g'8 |
  % 177
  f4 r8 gis,8 |
  % 178
  a cis' d a |
  % 179
  f e d a |
  % 180
  d cis' d a |
  % 181
  f e d a |
  % 182
  d4^\fermata r \bar "|."
}

IFigures = \context FiguredBass \figuremode { 
  \partial 8 <_>8 |
  %1
  <_>2*6 |
  %7
  <_>4. <6>8 |
  <_>2*9 |
  %17
  <_>8 <5 4> <3+> <_> |
  <_>2*2 
  %20
  <_>8 <5 4> <3> <_> | <_>2*2
  %23
  <_+>2 | <_>4. <6 4+>8 |
  <_>2 | <_>8 <6 5>4. | <_>2 | <_>8 <6 5>4. |
  %29
  <_>2*28 |
  %57
  <_>8 <5 4> <3+> <_> | <_>2*7 |
  %65
  <_>8 <6 5> <_> <_> | <_>2*33
  %99
  <_+>2 | <_>4. <6 4+>8 | <_>2 | <_>8 <6 5> <_> <_> |
  %103
  <_>2*56 |
  %159
  <_>4. <6>8 | <_>2*9 |
  %169
  <_>8 <5 4> <3+> <_> | <_>2*2 |
  <_>8 <5 4> <3> <_> | <_>2*2 |
  %175
  <_+>2 | <_>4. <6 4+>8 |
  <_>2 | <_>8 <6 5> <_> <_> |
  %179
  <_>2*4
 }
