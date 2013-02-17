\version "2.16.0"

ILute = \relative c {
  \key f \major
  \time 2/4 
  \set Timing.beamExceptions = #'(
    (end . (
      ((1 . 8) . (4))
      ((1 . 16) . (4 4))
    )))
  \set Score.skipBars = ##t
  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  \partial 8 r8 |
  R2*37 |
  % 38
  r4 r16 f''16 g a |
  % 39
  a f f d d a a bes |
  % 40
  bes d d g g d d bes' |
  % 41
  bes g g e e bes bes c |
  % 42
  a f' g a a, f' g a |
  % 43
  bes, f' g a c, f g a |
  % 44
  d, g a bes c, bes a g |
  % 45
  a4 r |
  % 46
  R2 |
  \times 2/3 {f'16 a g f g a a, a' g f g a |
  % 48
  bes, a' g f g a c, a' g f g a} |
  % 49
  d,4 r |
  % 50
  R2 |
  % 51
  \times 2/3 {a16 bes c d d e f f g a a bes} |
  % 52
  c8 f,16 g g4\startTrillSpan |
  % 53
  f8\stopTrillSpan r r4 |
  % 54
  R2*26 |
  % 80
  r16 a16 f a d, a' c, a' |
  % 81
  bes, g' e g c, g' bes, g' |
  % 82
  a, f' d f b, f' a, f' |
  % 83
  gis, f' e d gis, f' e d |
  % 84
  \times 2/3 {c16 a' b c b a c, a' b c b a |
  % 85
  d, a' b c b a e a b c b a |
  % 86
  f a b c b a c, a' b c b a |
  % 87
  d, a' b c b a e gis a b a gis} |
  % 88
  a4 r |
  % 89 
  R2 |
  % 90
  r4 \times 2/3 {r16 c, d e fis gis} |
  % 91
  a8 r \times 2/3 {r16 c, d e fis gis} |
  % 92
  a4 r |
  % 93
  r16 a16 c, a' d, a' e gis |
  % 94
  a8 r r4 |
  % 95
  R2*13 |
  % 108
  <d, a f>8 d16 e f d a' cis, |
  % 109
  <d a f>8 d16 e f d a' cis, |
  % 110
  d4 r |
  % 111 
  R2 |
  % 112
  r16 a'16 e a cis, a' b, a' |
  % 113
  a, a' e a cis, a' b, a' |
  % 114
  a,4 r |
  % 115
  \times 2/3 {r16 d e f e d g d e f e d} |
  % 116
  <e c >8<e c ><e c ><e c >|
  % 117
  \times 2/3 {r16 c d e d c f c d e d c} |
  % 118
  <d bes >8<d bes ><d bes ><d bes >|
  % 119
  \times 2/3 {r16 b cis d cis b e b cis d cis b} |
  % 120
  <cis a >8<cis a ><cis a ><cis a >|
  % 121
  \times 2/3 {r16 d e f e d a' d, e f e d} |
  % 122
  a'4 r |
  % 123
  R2*2 |
  %125
  \times 2/3 {r16 d, e f e d a' d, e f e d} |
  % 126
  a'4 r |
  % 127
  R2 |
  % 128
  r16 a32 g f16 f32 e d16 d32 c bes16 bes32 a |
  % 129
  g16 bes'32 a g16 g32 f e16 e32 d c16 c32 bes |
  % 130
  a16 c'32 bes a16 a32 g f16 f32 e d16 d32 c |
  % 131
  bes16 bes'32 a g16 g32 f e16 e32 d c16 c32 bes |
  % 132
  a4 r |
  % 133
  R2*2 |
  % 135
  r16 a'16 bes a g g a g |
  % 136
  f f g f e e f e |
  % 137
  d a' bes a g g a g |
  % 138
  f f g f e e f e |
  % 139
  d d e d cis cis d cis |
  % 140
  d4 r |
  % 141
  <d a d, f >8e16 f e8 d |
  % 142
  R2 |
  % 143
  <f a, d, f >8g16 a g8 f |
  % 144
  r4 \times 2/3 {a16 f g a g f} |
  % 145
  a,8 r \times 2/3 {g'16 e f g f e} |
  % 146
  a,16 a' bes a a a bes a |
  % 147
  a a bes a a a bes a |
  % 148
  a f e d a8 cis |
  % 149
  \times 2/3 {d16 d e f e d d e f f e d |
  % 150
  d e f f e d d e f f e d} |
  % 151
  d16 f e d a8 cis |
  % 152
  d4 r |
  % 153 
  R2*29 |
  % 182
  R2^\fermataMarkup
}
