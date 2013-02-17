\version "2.16.0"

IVlnII = \relative c''' {
  \key f \major
  \time 2/4 
  \set Timing.beamExceptions = #'(
    (end . (
      ((1 . 8) . (4))
      ((1 . 16) . (4 4))
    )))

  \partial 8 a8 |
  d,8 a d16. e32 f16. g32 |
  % 2
  a8 a, a' bes |
  % 3
  g a, e16. f32 g16. a32 |
  % 4
  f8 d r8 a''16(  f) |
  % 5
  e8 a r8 a16(  cis,) |
  % 6
  d8 bes' r8 g16(  bes) |
  % 7
  cis,8 a r8 a' |
  % 8
  f8.(^\trill e32  f) f8.(^\trill e32  f) |
  % 9
  g8 c, r8 bes' |
  % 10
  e,8.(^\trill d32  e) e8.(^\trill d32  e) |
  % 11
  f8 f f f |
  % 12
  a32(  g) a(  g) f16 r a32(  g) a(  g) f16 r |
  % 13
  a32(  g) a(  g) f16 r a32(  g) a(  g) f16 r |
  % 14
  r16 d c bes a g f e |
  % 15
  f8 a, bes c |
  % 16
  f4 r8 a'16 g |
  % 17
  g4(  fis8) e16 d |
  % 18
  e8 fis g a |
  % 19
  bes g r8 g16 f |
  % 20
  f4(  e8) d16 c |
  % 21
  d8 e f g |
  % 22
  a f r8 d |
  % 23
  a, d' cis a, |
  % 24
  bes bes'' g cis, |
  % 25
  d g, f gis, |
  % 26
  a g'' \times 2/3 {f16( g  a)} cis,8 |
  % 27
  d g \times 2/3 {f16( g  a)} cis,,8 |
  % 28
  d g' \times 2/3 {f16( g  a)} cis,8 |
  % 29
  d g \times 2/3 {f16( g  a)} cis,,8 |
  % 30
  d4 r8 d8\p |
  % 31
  f d cis a |
  % 32
  d a' g e |
  % 33
  cis a d a |
  % 34
  d e f d |
  % 35
  d' d, d d' |
  % 36
  a a, a a' |
  % 37
  d d, d g |
  % 38
  a a, d e |
  % 39
  f e f d |
  % 40
  g, a bes g |
  % 41
  g' e c e |
  % 42
  f8 r f8 r |
  % 43
  g8 r a8 r |
  % 44
  bes8 g e c |
  % 45
  f8 r f8 r |
  % 46
  g8 r a8 r |
  % 47
  bes8 r f8 r |
  % 48
  g8 r a8 r |
  % 49
  bes8 bes, a bes |
  % 50
  e f c' c, |
  % 51
  bes' bes, a bes |
  % 52
  e f c' c, |
  % 53
  f'\f c f16. g32 a16. bes32 |
  % 54
   c8[ c,]  c,[ d] |
  % 55
  bes c' g16. a32 bes16. c32 |
  % 56
  a8 f r8 a'16 g |
  % 57
  g4(  fis8) e16 d |
  % 58
  e8 fis g a |
  % 59
  bes g r8 g16 f |
  % 60
  f4(  e8) d16 c |
  % 61
  d8 e f g |
  % 62
  a f r8 f |
  % 63
  c, f' e c, |
  % 64
  bes f'' d bes, |
  % 65
  a bes'' \times 2/3 {a16( bes  c)} e,8 |
  % 66
  f bes \times 2/3 {a16( bes  c)} e,,8 |
  % 67
  f bes' \times 2/3 {a16( bes  c)} e,8 |
  % 68
  f bes \times 2/3 {a16( bes  c)} e,,8 |
  % 69
  f\p f f f |
  % 70
  f d e8 r |
  % 71
  f8 f f f |
  % 72
  f d e4 |
  % 73
  f8 f f f |
  % 74
  c' c, c d16 e |
  % 75
  f8 f f f |
  % 76
  c' c, c d16 e |
  % 77
  f8 f f f |
  % 78
  f f f f |
  % 79
  f f f f |
  % 80
  f d' bes a |
  % 81
  g c a g |
  % 82
  f b gis f |
  % 83
  e8 r e8 r |
  % 84
  a8 r a,8 a |
  % 85
  b b c c |
  % 86
  d d a a |
  % 87
  d d e e |
  % 88
  a, c d c |
  % 89
  r8 c d c |
  % 90
  a8 r a8 r |
  % 91
  a8 r a8 r |
  % 92
  a8 a' b e, |
  % 93
  a, a' b e, |
  % 94
  a'16.\f bes32 a16. g32 f16. e32 d16. cis32 |
  % 95
  d8 a d16. e32 f16. g32 |
  % 96
  a8 a, a' bes |
  % 97
  g a, e16. f32 g16. a32 |
  % 98
  f8 d r8 d' |
  % 99
  a, d' cis a, |
  % 100
  bes bes'' g cis, |
  % 101
  d g, f gis, |
  % 102
  a g'' \times 2/3 {f16( g  a)} cis,8 |
  % 103
  d g \times 2/3 {f16( g  a)} cis,,8 |
  % 104
  d g' \times 2/3 {f16( g  a)} cis,8 |
  % 105
  d g \times 2/3 {f16( g  a)} cis,,8 |
  % 106
  d4 r4 |
  % 107
  d4 r4 |
  % 108
  d4 r4 |
  % 109
  d4 r4 |
  % 110
  d8 r a'8 g |
  % 111
  f8 r a8 g |
  % 112
  f8 r a8 g |
  % 113
  f8 r a8 g |
  % 114
  f fis fis fis |
  % 115
  g g g g |
  % 116
  c,8 c c c |
  % 117
  f f f f |
  % 118
  bes,8 bes bes bes |
  % 119
  e e e e |
  % 120
  a,8 a a a |
  % 121
  d d f d |
  % 122
  r8 d f d |
  % 123
  r8 fis g e |
  % 124
  f d e cis |
  % 125
  d e f d |
  % 126
  r8 d' g, c |
  % 127
  f, bes e, a |
  % 128
  d, d bes g |
  % 129
  r8 e' c a |
  % 130
  r8 f' d bes |
  % 131
  r8 g' e c |
  % 132
  f2 |
  % 133
  f8 r fis8 fis |
  % 134
  g8 r gis8 gis |
  % 135
  a f e cis |
  % 136
  d f g e |
  % 137
  f d e cis |
  % 138
  d f g e |
  % 139
  f d e a, |
  % 140
  d4 r | d r | d r | d r | f8 r d r |
  % 145
  cis8 r a8 r |
  % 146
  d8 d f d |
  % 147
  r8 d f d |
  % 148
  r8 d a' a, |
  % 149
  d d f d |
  % 150
  r8 d f d |
  % 151
  r8 d a' a, |
  % 152
  d4 r8 a''8 |
  % 153
  d, a d16. e32 f16. g32 |
  % 154
  a8 a, a' bes |
  % 155
  g a, e16. f32 g16. a32 |
  % 156
  f8 d r8 a''16(  f) |
  % 157
  e8 a r8 a16(  cis,) |
  % 158
  d8 bes' r8 g16(  bes) |
  % 159
  cis,8 a r8 a' |
  % 160
  f8.(^\trill e32  f) f8.(^\trill e32  f) |
  % 161
  g8 c, r8 bes' |
  % 162
  e,8.(^\trill d32  e) e8.(^\trill d32  e) |
  % 163
  f8 f f f |
  % 164
  a32(  g) a(  g) f16 r a32(  g) a(  g) f16 r |
  % 165
  a32(  g) a(  g) f16 r a32(  g) a(  g) f16 r |
  % 166
  r16 d c bes a g f e |
  % 167
  f8 a, bes c |
  % 168
  f4 r8 a'16 g |
  % 169
  g4(  fis8) e16 d |
  % 170
  e8 fis g a |
  % 171
  bes g r8 g16 f |
  % 172
  f4(  e8) d16 c |
  % 173
  d8 e f g |
  % 174
  a f r8 d |
  % 175
  a, d' cis a, |
  % 176
  bes bes'' g cis, |
  % 177
  d g, f gis, |
  % 178
  a g'' \times 2/3 {f16( g  a)} cis,8 |
  % 179
  d g \times 2/3 {f16( g  a)} cis,,8 |
  % 180
  d g' \times 2/3 {f16( g  a)} cis,8 |
  % 181
  d g \times 2/3 {f16( g  a)} cis,,8 |
  % 182
  d4^\fermata r \bar "|."
}
