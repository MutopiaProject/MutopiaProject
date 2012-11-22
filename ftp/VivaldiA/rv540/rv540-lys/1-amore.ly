\version "2.16.0"

IAmore = \relative c {
  \key f \major
  \time 2/4 
  \set Timing.beamExceptions = #'(
    (end . (
      ((1 . 8) . (4))
      ((1 . 16) . (4 4))
    )))
  \set Score.skipBars = ##t
  \set tupletSpannerDuration = #(ly:make-moment 1 8)

  \partial 8 r8 | R2*29 |
  r4 r8 <<d''8 \\ a >> |
  % 31
  <<{d8 e16 f e8 f16 g | f8 e e e |
  e f16 g \acciaccatura g8
  f e | f d d f} \\
  {a,4 a | a a8 a | a4 a | a a8 d}>>
  % 35
  <f d >a a g16 f |
  % 36
  <e cis >8g g^\trill f16 e |
  % 37
  <f d >8a a g16 f |
  % 38
  <f a, >8<e a, > r4 |
  % 39
  R2*6 |
  % 45
  \times 2/3 {f16 a g f g a a, a' g f g a |
  % 46
  bes, a' g f g a c, a' g f g a} |
  % 47
  d,4 r |
  % 48
  R2 |
  %49
  \times 2/3 {d16 bes c d d e f f g a a bes} |
  % 50
  c8 f,16 g g4\startTrillSpan |
  % 51
  f4\stopTrillSpan r4 |
  % 52
  R2*17 |
  % 69
  <<{f,8 a16 bes
  \acciaccatura{a[ bes]}
  c8 bes} \\ {s f f f}>>
  % 70
  <a f >16c d, c' e, d' c bes |
  % 71
  <<{a8 a16 bes \acciaccatura{a[ bes]}
  c8 bes} \\ {f f f f}>>
  % 72
  <a f >16c d, c' e, d' c bes |
  % 73
  <a f >8f'16 g \acciaccatura{f[ g]} a8 f |
  % 74
  e16 g c, g' bes, d c bes |
  % 75
  <a f >8f'16 g a8 f |
  % 76
  e16 g c, g' bes, d c bes |
  % 77
  <<{a8 a \times 2/3 {a16 bes c c bes a}} \\ {f8 f f f}>>
  % 78
  <<{\acciaccatura{bes16[ c]}
  d8 c \times 2/3 {a16 bes c c bes a}} \\ {f8 f f f}>>
  % 79
  <<{\acciaccatura{bes16[ c]}
  d8 c \acciaccatura{bes16[ c]}
  d8 c} \\ {f,8 f f f}>>
  % 80
  R2*8
  % 88
  <<{e'16 e e f f8 e16 f} \\ {a,16 a a a a8 ~ a16 a}>>
  % 89
  <<{e'16 e e f f8(  e16) f} \\ {a,16 a a a a8 ~ a16 a}>>
  % 90
  \times 2/3 {<e' a, > c d e fis gis} a8 r |
  % 91
  \times 2/3 {r16 c, d e fis gis} a8 r |
  % 92
  r16 a c, a' d, a' e gis |
  % 93
  a4 r |
  % 94
  R2*12 |
  % 106
  <d, a a, f' d >8d16 e f d a' cis, |
  % 107
  <d a a, f' d >8d16 e f d a' cis, |
  % 108
  d4 r |
  % 109
  R2 |
  % 110
  r16 a'16 e a cis, a' b, a' |
  % 111
  a, a' e a cis, a' b, a' |
  % 112
  a,4 r | R2 |
  %114
  \times 2/3 {r16 a' bes c bes a d a bes c bes a} |
  % 115
  <bes g >8<bes g ><bes g ><bes g >|
  % 116
  \times 2/3 {r16 g a bes a g c g a bes a g} |
  % 117
  <a f >8<a f ><a f ><a f >|
  % 118
  \times 2/3 {r16 f g a g f bes f g a g f} |
  % 119
  <g e >8<g e ><g e ><g e >|
  % 120
  \times 2/3 {r16 e f g f e a e f g f e} |
  % 121
  f4 r |
  % 122
  \times 2/3 {r16 d e f e d a' d, e f e d} |
  % 123
  a'8 a16 c, bes8 g'16 bes, |
  % 124
  a8 f'16 a, g8 e'16 g, |
  % 125
  f4 r |
  % 126
  r16 a'16 fis8 g16 bes e,8 |
  % 127
  f16 a d,8 e16 g cis,8 |
  % 128
  d4 r |
  % 129
  R2*3 |
  % 132 
  r16 <<{c16 bes8^\trill a16 c bes8^\trill} \\ {f16 f8 f16 f f8}>> |
  % 133
  <a f >16bes32 c d e f g a16 d, c8^\trill |
  % 134
  b16 c32 d e f gis a b16 e, d8 |
  % 135
  <cis a >4 r |
  % 136
  r16 a'16 bes a g g a g |
  % 137
  f f g f e e f e |
  % 138
  d a' bes a g g a g |
  % 139
  f f g f e e f e |
  % 140
  <d a d, f >8e16 f e8 d |
  % 141
  R2 |
  % 142
  <f a, d, f >8g16 a g8 f |
  % 143
  R2 |
  % 144
  \times 2/3 {a16 f g a g f} a,8 r8 |
  % 145
  \times 2/3 {g'16 e f g f e} a,8 r8 |
  % 146
  f'16 f g f f f g f |
  % 147
  f f g f f f g f |
  % 148
  <<{f a g f e4\startTrillSpan} \\ {a,16 a a a a4}>> |
  % 149
  \times 2/3 {d16\stopTrillSpan f g a g f f g a a g f} |
  % 150
  \times 2/3 {f g a a g f f g a a g f} |
  % 151
  <<{f a g f e4\startTrillSpan} \\ {a,16 a a a a4}>> |
  % 152
  <d a d, f >4\stopTrillSpan r4 |
  % 153
  R2*29 |
  % 182
  R2^\fermataMarkup
}
